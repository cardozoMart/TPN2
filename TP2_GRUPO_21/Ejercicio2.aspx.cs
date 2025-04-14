using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2_GRUPO_21
{
    public partial class Ejercicio2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                ListItemCollection coleccion = new ListItemCollection();
                coleccion.Add(new ListItem("Gral. Pacheco", "zona norte"));
                coleccion.Add(new ListItem("San Miguel", "zona oeste"));
                coleccion.Add(new ListItem("Boedo", "zona sur"));

                ddlCiudad.DataSource = coleccion;
                ddlCiudad.DataTextField = "Text";
                ddlCiudad.DataValueField = "Value";
                ddlCiudad.DataBind();
            }
        }

        protected void ddlCiudad_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnVerResumen_Click(object sender, EventArgs e)
        {
            Response.Redirect("Ejercicio2_Resumen.aspx");
        }
    }
}