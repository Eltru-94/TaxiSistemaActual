using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ingreso_usuario : System.Web.UI.Page
{
    Verificacion objver = new Verificacion();
    ProcesosUsuario objProcesosU;
    private string nombreup;
    private string apellidoup;
    private string cedulaup;
    private string telefonoup;
    private string usuarioup;
    private string claveup;

    protected void Page_Load(object sender, EventArgs e)

    {
        try
        {
            objProcesosU = new ProcesosUsuario();
            Btn_eliminar.Enabled = false;


            this.Btn_eliminar.BackColor = Color.FromArgb(0, 128, 0);
            gv_datos.SelectedIndex = -1;

            if (!IsPostBack)
            {
                this.Btn_eliminar.Attributes.Add("OnClick", "javascript:if(confirm('Seguro que desea eliminar? .') == false) return false;"); //Button Aceptar & Cancelar

            }

            this.gv_datos.DataSource = objProcesosU.Usuarios_filtro("");
            gv_datos.DataBind();
        }
        catch (Exception) { }


    }


    protected void Guardar_Usuario(object sender, EventArgs e)
    {
        try
        {
            int estado = 1;
            String nombre = "";
            String apellido = "";
            String cedula = "";
            String telefono = "";
            String usuario = "";
            String clave = "";


            nombre = Txt_nombre.Text;
            apellido = Txt_apellido.Text;
            cedula = Txt_cedula.Text.Trim();
            telefono = Txt_telefono.Text;
            usuario = Txt_usuario.Text;
            clave = Txt_clave.Text;


            if (!nombre.Equals("") && !apellido.Equals("") && !cedula.Equals("") && !telefono.Equals("") && !usuario.Equals("") && !clave.Equals("") && objver.VerificarCedula(cedula))
            {
                objProcesosU.Insert_Usuario(nombre, apellido, cedula, telefono, usuario, clave, estado);
                Response.Redirect("ingreso_usuario.aspx");

            }
            else
            {
                Response.Write("<script language=javascript>alert('Por favor llene todos los campos');</script>");
            }
        }
        catch (Exception)
        {

        }

    }

    protected void Btn_Buscar_Click(object sender, EventArgs e)
    {
        try
        {
            this.gv_datos.DataSource = objProcesosU.Usuarios_filtro(Txt_datoBuscar.Text);
            gv_datos.DataBind();
        }
        catch (Exception)
        {

        }
    }

    protected void Btn_Atras_Ingreso_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("ingreso.aspx");
        }
        catch (Exception)
        {

        }
    }


    protected void GridView1_SelectedIndexChanged_ELIMINAR(object sender, EventArgs e)
    {
        try
        {
            String valor = gv_datos.SelectedRow.Cells[1].Text;
            if (!valor.Equals(""))
            {
                Txt_upnombre.Text = gv_datos.SelectedRow.Cells[2].Text;
                Txt_upapellido.Text = gv_datos.SelectedRow.Cells[3].Text;
                Txt_upcedula.Text = gv_datos.SelectedRow.Cells[4].Text;
                Txt_uptelefono.Text = gv_datos.SelectedRow.Cells[5].Text;
                Txt_upusuario.Text = gv_datos.SelectedRow.Cells[6].Text;
                Txt_upclave.Text = gv_datos.SelectedRow.Cells[7].Text;
            }
            Txt_id.Text = valor;
            Btn_Buscar_Click(null, null);
            Btn_eliminar.Enabled = true;
            this.Btn_eliminar.BackColor = Color.FromArgb(0, 0, 125);
        }
        catch (Exception)
        {

        }


    }

    protected void Btn_nuevo_Click(object sender, EventArgs e)
    {
        try
        {
            Btn_eliminar.Enabled = false;
            gv_datos.SelectedIndex = -1;
            vaciarCajas();
        }
        catch (Exception) { }


    }

    protected void Btn_eliminar_Click(object sender, EventArgs e)
    {
        try
        {
            this.Btn_eliminar.Attributes.Add("OnClick", "javascript:if(confirm('Seguro que desea eliminar?? .') == false) return false;"); //Button Aceptar & Cancelar
            int id = Int32.Parse(Txt_id.Text);
            objProcesosU.Delete_Usuario(id);
            Response.Redirect("ingreso_usuario.aspx");
        }
        catch (Exception) { }

    }

    protected void Btn_Update_Click(object sender, EventArgs e)
    {
        try
        {
            string nombre = Txt_upnombre.Text.Trim();
            string apellido = Txt_upapellido.Text.Trim();
            string cedula = Txt_upcedula.Text.Trim();
            string telefono = Txt_uptelefono.Text.Trim();
            string usuario = Txt_upusuario.Text.Trim();
            string clave = Txt_upclave.Text.Trim();

            String a = Txt_id.Text;
            if (!a.Equals(""))
            {
                int id = Int32.Parse(Txt_id.Text);
                if (!nombre.Equals("") && !apellido.Equals("") && !cedula.Equals("") && !telefono.Equals("") && !usuario.Equals("") && !clave.Equals(""))
                {
                    if (objver.VerificarCedula(cedula))
                    {
                        objProcesosU.UpdateUsuario(id, nombre, apellido, cedula, telefono, usuario, clave);
                        Response.Redirect("ingreso_usuario.aspx");
                        vaciarCajas();
                    }
                    else
                    {
                        vaciarCajas();
                        Response.Write("<script language=javascript>alert('Cedula Incorrecta');</script>");
                        
                    }


                }


            }
        }
        catch (Exception)
        { }
    }
    public void vaciarCajas()
    {
        Txt_upnombre.Text = "";
        Txt_upapellido.Text = "";
        Txt_upcedula.Text = "";
        Txt_uptelefono.Text = "";
        Txt_upusuario.Text = "";
        Txt_upclave.Text = "";
    }
}