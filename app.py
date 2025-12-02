from flask import Flask, render_template, request
import mysql.connector
from datetime import datetime

app = Flask(__name__)


def crear_conexion():
    return mysql.connector.connect(
        host="localhost",
        user="root",
        password="PONGAN SU PASSWORD",
        database="farmacia_tfi"
    )

# ----------------------------------------------
# MENÚ PRINCIPAL
# ----------------------------------------------
@app.route("/")
def inicio():
    conexion = crear_conexion()
    cursor = conexion.cursor()

    # 1) Total clientes
    cursor.execute("SELECT COUNT(*) FROM cliente;")
    total_clientes = cursor.fetchone()[0]

    # 2) Ventas HOY
    cursor.execute("""
        SELECT COUNT(*)
        FROM venta
        WHERE DATE(fecha) = CURDATE();
    """)
    ventas_hoy = cursor.fetchone()[0]

    # 3) Medicamentos por vencer (próximos 180 días)
    cursor.execute("""
        SELECT COUNT(*)
        FROM medicamento
        WHERE fecha_venc < DATE_ADD(CURDATE(), INTERVAL 180 DAY);
    """)
    por_vencer = cursor.fetchone()[0]

    # 4) Facturación del MES actual
    cursor.execute("""
        SELECT IFNULL(SUM(Precio_total), 0)
        FROM venta
        WHERE MONTH(fecha) = MONTH(CURDATE())
        AND YEAR(fecha) = YEAR(CURDATE());
    """)
    facturacion_mes = cursor.fetchone()[0]

    # 5) Últimas 5 ventas
    cursor.execute("""
        SELECT idVenta, DATE_FORMAT(fecha, '%d/%m/%Y'), Precio_total
        FROM venta
        ORDER BY fecha DESC
        LIMIT 5;
    """)
    ultimas_ventas = cursor.fetchall()

    # 6) Medicamentos con bajo stock (menos de 20)
    cursor.execute("""
        SELECT COUNT(*)
        FROM medicamento
        WHERE stock < 20;
    """)
    bajo_stock = cursor.fetchone()[0]




    cursor.close()
    conexion.close()

    return render_template(
        "index.html",
        total_clientes=total_clientes,
        ventas_hoy=ventas_hoy,
        por_vencer=por_vencer,
        facturacion_mes=facturacion_mes,
        ultimas_ventas=ultimas_ventas,
        bajo_stock=bajo_stock    
    )




# ----------------------------------------------
# 1) LISTAR CLIENTES
# ----------------------------------------------
@app.route("/clientes")
def clientes():
    conexion = crear_conexion()
    cursor = conexion.cursor()
    cursor.execute("SELECT idCliente, Nombre, Apellido, DNI FROM cliente;")
    datos = cursor.fetchall()
    cursor.close()
    conexion.close()

    return render_template("clientes.html", clientes=datos)


# ----------------------------------------------
# 2) BUSCAR CLIENTE POR APELLIDO
# ----------------------------------------------
@app.route("/buscar_cliente", methods=["GET", "POST"])
def buscar_cliente():
    resultados = None

    if request.method == "POST":
        apellido = request.form["apellido"]

        conexion = crear_conexion()
        cursor = conexion.cursor()
        cursor.execute(
            f"SELECT idCliente, Nombre, Apellido, DNI FROM cliente WHERE Apellido LIKE '%{apellido}%';"
        )
        resultados = cursor.fetchall()
        cursor.close()
        conexion.close()

    return render_template("buscar_cliente.html", resultados=resultados)


# ----------------------------------------------
# 3) LISTAR MEDICAMENTOS
# ----------------------------------------------
@app.route("/medicamentos")
def medicamentos():
    orden = request.args.get("orden", "id")  # valor por defecto

    conexion = crear_conexion()
    cursor = conexion.cursor()

    # Validación de orden para evitar SQL injection
    if orden == "stock":
        query = "SELECT idMedicamento, Nombre, precio, stock FROM medicamento ORDER BY stock ASC;"
    else:
        query = "SELECT idMedicamento, Nombre, precio, stock FROM medicamento ORDER BY idMedicamento ASC;"

    cursor.execute(query)
    datos = cursor.fetchall()

    cursor.close()
    conexion.close()

    return render_template("medicamentos.html", medicamentos=datos, orden=orden)



# ----------------------------------------------
# 4) MEDICAMENTOS QUE REQUIEREN RECETA
# ----------------------------------------------
@app.route("/medicamentos_receta")
def medicamentos_receta():
    conexion = crear_conexion()
    cursor = conexion.cursor()
    cursor.execute("SELECT Nombre, precio FROM medicamento WHERE requiere_receta = 'Sí';")
    datos = cursor.fetchall()
    cursor.close()
    conexion.close()

    return render_template("medicamentos_receta.html", medicamentos=datos)


# ----------------------------------------------
# 5) MEDICAMENTOS POR VENCER
# ----------------------------------------------
@app.route("/medicamentos_vencer")
def medicamentos_vencer():
    conexion = crear_conexion()
    cursor = conexion.cursor()

    cursor.execute("""
        SELECT idMedicamento, Nombre, DATE_FORMAT(fecha_venc, '%d/%m/%Y')
        FROM medicamento
        WHERE fecha_venc < DATE_ADD(CURDATE(), INTERVAL 180 DAY);
    """)

    datos = cursor.fetchall()
    cursor.close()
    conexion.close()

    return render_template("medicamentos_vencer.html", medicamentos=datos)


# ----------------------------------------------
# 6) VENTAS ENTRE FECHAS
# ----------------------------------------------
@app.route("/ventas_fechas", methods=["GET", "POST"])
def ventas_fechas():
    ventas = None

    if request.method == "POST":
        f1 = request.form["fecha1"]
        f2 = request.form["fecha2"]

        conexion = crear_conexion()
        cursor = conexion.cursor()
        cursor.execute(f"""
            SELECT idVenta, Precio_total, DATE_FORMAT(fecha, '%d/%m/%Y')
            FROM venta
            WHERE fecha BETWEEN '{f1}' AND '{f2}';
        """)
        ventas = cursor.fetchall()
        cursor.close()
        conexion.close()

    return render_template("ventas_fechas.html", ventas=ventas)


# ----------------------------------------------
# 7) DETALLE DE UNA VENTA
# ----------------------------------------------
@app.route("/venta_detalle", methods=["GET", "POST"])
def venta_detalle():
    venta = None
    detalles = None

    if request.method == "POST":
        venta_id = request.form["id_venta"]

        conexion = crear_conexion()
        cursor = conexion.cursor()

        # Venta general
        cursor.execute(f"""
            SELECT idVenta, Precio_total, DATE_FORMAT(fecha, '%d/%m/%Y')
            FROM venta WHERE idVenta = {venta_id};
        """)
        v = cursor.fetchone()

        if v:
            venta = {
                "id": v[0],
                "total": v[1],
                "fecha": v[2]
            }

            # Detalle de venta
            cursor.execute(f"""
                SELECT nombre, cantidad, precio_unitario, descuento_item
                FROM detalle_venta
                WHERE Venta_idVenta = {venta_id};
            """)
            detalles = cursor.fetchall()

        cursor.close()
        conexion.close()

    return render_template("venta_detalle.html", venta=venta, detalles=detalles)

@app.route("/top_medicamentos")
def top_medicamentos():
    conexion = crear_conexion()
    cursor = conexion.cursor()

    cursor.execute("""
        SELECT nombre, SUM(cantidad) AS total_vendido
        FROM detalle_venta
        GROUP BY nombre
        ORDER BY total_vendido DESC
        LIMIT 5;
    """)

    datos = cursor.fetchall()
    cursor.close()
    conexion.close()

    nombres = [fila[0] for fila in datos]
    cantidades = [fila[1] for fila in datos]

    return {"labels": nombres, "data": cantidades}



@app.route("/ventas_obra_social")
def ventas_obra_social():
    conexion = crear_conexion()
    cursor = conexion.cursor()

    cursor.execute("""
        SELECT os.Nombre, COUNT(*) AS total
        FROM venta v
        JOIN cliente c ON v.Cliente_idCliente = c.idCliente
        JOIN obra_social os ON c.Obra_Social_idObra_Social = os.idObra_Social
        GROUP BY os.Nombre
        ORDER BY total DESC;
    """)

    datos = cursor.fetchall()
    cursor.close()
    conexion.close()

    labels = [fila[0] for fila in datos]
    valores = [fila[1] for fila in datos]

    return {"labels": labels, "data": valores}






@app.route("/distribuidores")
def distribuidores():
    conexion = crear_conexion()
    cursor = conexion.cursor()
    cursor.execute("""SELECT d.Nombre AS Distribuidor, m.Nombre AS Medicamento, m.precio AS Precio
FROM distribuidor d
JOIN distribuidor_has_medicamento dhm 
        ON d.idDistribuidor = dhm.Distribuidor_idDistribuidor
JOIN medicamento m 
        ON dhm.Medicamento_idMedicamento = m.idMedicamento
ORDER BY d.Nombre;""")
    datos = cursor.fetchall()
    cursor.close()
    conexion.close()

    return render_template("distribuidores.html", distribuidores=datos)


@app.route("/receta_detalle", methods=["GET", "POST"])
def recetas():
    receta = None           # una receta puntual (si se busca por ID)
    detalles = None         # detalles de esa receta (detalle_receta)
    recetas_paciente = None # lista de recetas de un paciente (si se busca por DNI)
    mensaje = None

    if request.method == "POST":
        id_receta = request.form.get("id_receta", "").strip()
        dni = request.form.get("dni", "").strip()

        if not id_receta and not dni:
            mensaje = "Ingrese un ID de receta o un DNI para buscar."
        else:
            conexion = crear_conexion()
            cursor = conexion.cursor()

            # 👉 Búsqueda por ID de receta
            if id_receta:
                cursor.execute("""
                    SELECT 
                        r.idReceta,
                        DATE_FORMAT(r.Fecha_emision, '%d/%m/%Y') AS fecha,
                        r.Nombre_medico,
                        r.Matricula_medica,
                        r.Diagnostico,
                        c.Nombre,
                        c.Apellido,
                        c.DNI
                    FROM receta r
                    JOIN cliente c ON r.Cliente_idCliente = c.idCliente
                    WHERE r.idReceta = %s;
                """, (id_receta,))
                
                fila = cursor.fetchone()

                if fila:
                    receta = {
                        "id": fila[0],
                        "fecha": fila[1],
                        "medico": fila[2],
                        "matricula": fila[3],
                        "diagnostico": fila[4],
                        "nombre_pac": fila[5],
                        "apellido_pac": fila[6],
                        "dni": fila[7],
                    }

                    # Detalle de esa receta (detalle_receta)
                    cursor.execute("""
                        SELECT Medicamento, Frecuencia, Duracion, Dosis
                        FROM detalle_receta
                        WHERE Receta_idReceta = %s;
                    """, (id_receta,))
                    detalles = cursor.fetchall()
                else:
                    mensaje = "No se encontró ninguna receta con ese ID."

            # 👉 Búsqueda por DNI del paciente
            elif dni:
                cursor.execute("""
                    SELECT 
                        r.idReceta,
                        DATE_FORMAT(r.Fecha_emision, '%d/%m/%Y') AS fecha,
                        r.Nombre_medico,
                        r.Diagnostico,
                        c.Nombre,
                        c.Apellido
                    FROM receta r
                    JOIN cliente c ON r.Cliente_idCliente = c.idCliente
                    WHERE c.DNI = %s
                    ORDER BY r.Fecha_emision DESC;
                """, (dni,))
                recetas_paciente = cursor.fetchall()

                if not recetas_paciente:
                    mensaje = "Ese DNI no tiene recetas registradas."

            cursor.close()
            conexion.close()

    return render_template(
        "receta_detalle.html",
        receta=receta,
        detalles=detalles,
        recetas_paciente=recetas_paciente,
        mensaje=mensaje
    )





# ----------------------------------------------
# EJECUTAR SERVIDOR
# ----------------------------------------------
if __name__ == "__main__":
    app.run(debug=True)
