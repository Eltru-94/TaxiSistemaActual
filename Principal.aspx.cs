using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Principal : System.Web.UI.Page
{
   


    protected void Page_Load(object sender, EventArgs e)
    {
        Lbl_nombre.Text = (string)Session["nombre"];
        Lbl_apellido.Text = (string)Session["apellido"];
        Lbl_cedula.Text = (string)Session["cedula"];
        Lbl_telefono.Text = (string)Session["telefono"];

    }
}