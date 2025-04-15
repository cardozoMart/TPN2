using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Schema;

namespace TP2_GRUPO_21
{
    public partial class ejercicio1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGenerarTabla_Click(object sender, EventArgs e)
        {
            int cantidad1 = 0;
            int cantidad2 = 0;

            string[] nombres = { txtBoxProducto1.Text, txtBoxProducto2.Text };

            if (    string.IsNullOrWhiteSpace(nombres[0]) 
               ||   string.IsNullOrWhiteSpace(nombres[1]) 
               )
            {
                litTabla.Text = "<span style='color:red'>Completá ambos nombres.</span>";
                return;
            }

            if (nombres[0].Trim().ToLower() == nombres[1].Trim().ToLower())
            {
                litTabla.Text = "<span style='color:red'>Los productos no pueden tener el mismo nombre.</span>";
                return;
            }

            if (    !int.TryParse(txtBoxCantidad1.Text, out cantidad1)
               ||   cantidad1 < 0
               ||   !int.TryParse(txtBoxCantidad2.Text, out cantidad2)
               ||   cantidad2 < 0
               )
            {
                litTabla.Text = "<span style='color:red'>Completa las cantidades, no pueden estar vacías.</span>";
                return;
            }

            int.TryParse(txtBoxCantidad1.Text, out cantidad1);
            int.TryParse(txtBoxCantidad2.Text, out cantidad2);

            int[] cantidades = { cantidad1, cantidad2 };

            string tabla = "<table border='1'>";
            int total = 0;

            tabla += "<tr><th>Producto</th><th>Cantidad</th></tr>";
            for (int i = 0; i < nombres.Length; i++)
            {
                tabla += $"<tr><td>{nombres[i]}</td><td>{cantidades[i]}</td></tr>";
                total += cantidades[i];
            }
            tabla += $"<tr><td>Total</td><td>{total}</td></tr>";

            tabla += "</table>";

            litTabla.Text = tabla;

            txtBoxCantidad1.Text = "";
            txtBoxCantidad2.Text = "";
            txtBoxProducto1.Text = "";
            txtBoxProducto2.Text = "";
        }
    }
}