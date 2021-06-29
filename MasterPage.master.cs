using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    private SqlDataReader registro;

    protected void Page_Load(object sender, EventArgs e)
    {
        conexiondb objconecion = new conexiondb();
        lbl_nombre.Text = (string)Session["nombre"] +"\t"+ (string)Session["apellido"];
        string usuario = (string)Session["usuario"];
        string clave = (string)Session["clave"];
        registro = objconecion.Funcionalidad(usuario,clave);
       

    }

    public SqlDataReader getFilas()
    {
        return this.registro;
    }
}
