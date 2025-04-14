using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2_GRUPO_21
{
	public partial class ejercicio3 : System.Web.UI.Page
	{
            protected void Page_Load(object sender, EventArgs e)
            {
               
            }

            protected void btnRojo_Click(object sender, EventArgs e)
            {
                lblTexto.ForeColor = Color.Red;
            }
           
        }    
}

