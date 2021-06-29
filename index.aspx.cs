using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    Procesoslogin objprocesoslogin = new Procesoslogin();
    private string usuario;
    private string clave;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_identificarse_Click(object sender, EventArgs e)
    {

        try
        {
            usuario = Txt_usuario.Text;
            clave = Txt_clave.Text;

            if (!usuario.Equals("") && !clave.Equals(""))
            {
                int vericadorlogin = objprocesoslogin.verificadorLogin(usuario, clave);
                if (vericadorlogin != 0)
                {
                    Session.Add("nombre", objprocesoslogin.nombre());
                    Session.Add("apellido", objprocesoslogin.apellido());
                    Session.Add("cedula", objprocesoslogin.cedula());
                    Session.Add("telefono", objprocesoslogin.telefono());
                    Session.Add("usuario", objprocesoslogin.usuario());
                    Session.Add("clave", objprocesoslogin.clave());
                    Response.Redirect("Principal.aspx?");
                }
                else
                {
                    Response.Write("<script language=javascript>alert('Ingrese correctamente su usuario y clave por favor.');</script>");
                    limpiarCajas();
                }

            }
            else
            {
                Response.Write("<script language=javascript>alert('Por favor comple los campos.');</script>");

            }
        }
        catch (Exception)
        {

        }

    }

    public void limpiarCajas()
    {
        Txt_clave.Text = "";
        Txt_usuario.Text = "";
    }
}