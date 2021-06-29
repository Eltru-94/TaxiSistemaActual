using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Modal_Modal : System.Web.UI.Page
{
    int id;
    ProcesosUsuario objUsuario = new ProcesosUsuario();
    private string nombre = "";
    private string apellido = "";
    private string cedula = "";
    private string telefono = "";
    private string usuario = "";
    private string clave = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            //id = Int32.Parse((string)Session["nombre"]);
            //DataTable datos = objUsuario.update(id);
            //Txt_nombre.Text = datos.Rows[0]["USU_NOMBRE"].ToString();
            //Txt_apellido.Text = datos.Rows[0]["USU_APELLIDO"].ToString();
            //Txt_cedula.Text = datos.Rows[0]["USU_CEDULA"].ToString();
            //Txt_telefono.Text = datos.Rows[0]["USU_TELEFONO"].ToString();
            //Txt_usuario.Text = datos.Rows[0]["USU_USUARIO"].ToString();
            //Txt_clave.Text = datos.Rows[0]["USU_CLAVE"].ToString();

            //if (!IsPostBack)
            //{
            // Btn_cancelar.Attributes.Add("onclick", "window.close('Modal/Modal.aspx',null,'status:no;dialogWidth:450px;dialogHeight:400px;dialogHide:true;help:no;scroll:true');");
            // Btn_editar.Attributes.Add("onclick", "window.close('Modal/Modal.aspx',null,'status:no;dialogWidth:450px;dialogHeight:400px;dialogHide:true;help:no;scroll:true');");

            //}

        }
        catch (Exception)
        {

        }

    }

    protected void Guardar_Usuario(object sender, EventArgs e)
    {
        nombre = "FERNANDO12";
        apellido = "PEREZ";
        cedula = "123456";
        telefono = "123456";
        usuario = "QW";
        clave = "11111";


      // Btn_editar.Attributes.Add("onclick", "window.close('Modal.aspx',null,'status:no;dialogWidth:450px;dialogHeight:400px;dialogHide:true;help:no;scroll:true');");
        objUsuario.UpdateUsuario(1, nombre, apellido, cedula, telefono, usuario, clave);
      // Response.Redirect("ingreso_usuario.aspx");
    }

    protected void Btn_cancelar_Click(object sender, EventArgs e)
    {
        //Btn_cancelar.Attributes.Add("onclick", "window.close('Modal.aspx',null,'status:no;dialogWidth:450px;dialogHeight:400px;dialogHide:true;help:no;scroll:true');");
        //Response.Redirect("ingreso_usuario.aspx");
    }
}