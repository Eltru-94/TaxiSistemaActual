using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ingreso : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Btn_Ingreso_usuario_Click(object sender, EventArgs e)
    {
        Response.Redirect("ingreso_usuario.aspx");
    }

    protected void Btn_Ingreso_propietario_Click(object sender, EventArgs e)
    {
       
             Response.Redirect("insert_propietario.aspx");
    }

    protected void Btn_Ingreso_chofer_Click(object sender, EventArgs e)
    {
        Response.Redirect("ingreso_chofer.aspx");
    }
}