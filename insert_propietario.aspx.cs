using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class insert_propirtario : System.Web.UI.Page
{

    Verificacion objver = new Verificacion();
    Procesospropietario objpropietario;

    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            objpropietario = new Procesospropietario();
            Btn_eliminar.Enabled = false;


            this.Btn_eliminar.BackColor = Color.FromArgb(0, 128, 0);
            Datos_Propietario.SelectedIndex = -1;

            if (!IsPostBack)
            {
                this.Btn_eliminar.Attributes.Add("OnClick", "javascript:if(confirm('Seguro que desea eliminar? .') == false) return false;"); //Button Aceptar & Cancelar

            }

            this.Datos_Propietario.DataSource = objpropietario.Propietario_filtro("");
            Datos_Propietario.DataBind();
        }
        catch (Exception) { }
    }
    protected void Guardar_Propietario(object sender, EventArgs e)
    {
        try
        {

            String nombre = "";
            String apellido = "";
            String cedula = "";
            String direccion = "";
            String telefono = "";


            nombre = Txt_nombre.Text;
            apellido = Txt_apellido.Text;
            cedula = Txt_cedula.Text;
            direccion = Txt_direccion.Text;
            telefono = Txt_telefono.Text;

            if (!nombre.Equals("") && !apellido.Equals("") && !cedula.Equals("") && !telefono.Equals("") && !direccion.Equals(""))
            {
                if (objver.VerificarCedula(cedula))
                {
                    objpropietario.Insert_Propietario(nombre, apellido, cedula, direccion, telefono, 1);
                    Response.Write("<script language=javascript>alert('Datos Creados');</script>");
                    Response.Redirect("insert_propietario.aspx");
                }
                else
                {
                    Response.Write("<script language=javascript>alert('Cedula incorrecta');</script>");
                }


            }
            else
            {
                Response.Write("<script language=javascript>alert('Por favor llene todos los campos');</script>");
            }
        }
        catch (Exception) { }


    }

    protected void Btn_Buscar_Click(object sender, EventArgs e)
    {
        try
        {
            this.Datos_Propietario.DataSource = objpropietario.Propietario_filtro(Txt_datoBuscar_Propietario.Text);
            Datos_Propietario.DataBind();
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

    protected void Btn_eliminar_Click(object sender, EventArgs e)
    {
        try
        {
            int id = Int32.Parse(Txt_id.Text);
            objpropietario.deletepropietario(id);
            Response.Write("<script language=javascript>alert('Usuario eliminado con exito');</script>");
            Response.Redirect("insert_propietario.aspx");
        }
        catch (Exception) { }
    }

    protected void Btn_nueva_Click(object sender, EventArgs e)
    {
        try
        {
            Btn_eliminar.Enabled = false;
            Datos_Propietario.SelectedIndex = -1;
            VaciarCajasUp();
        }
        catch (Exception) { }
    }

    protected void Datos_Propietario_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            String valor = Datos_Propietario.SelectedRow.Cells[1].Text.Trim();
            if (!valor.Equals(""))
            {
                Txt_upnombre.Text = Datos_Propietario.SelectedRow.Cells[2].Text.Trim();
                Txt_upapellido.Text = Datos_Propietario.SelectedRow.Cells[3].Text.Trim();
                Txt_upcedula.Text = Datos_Propietario.SelectedRow.Cells[4].Text.Trim();
                Txt_uptelefono.Text = Datos_Propietario.SelectedRow.Cells[6].Text.Trim();
                Txt_updirrecion.Text = Datos_Propietario.SelectedRow.Cells[5].Text.Trim();

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

    protected void Btn_Update_Click(object sender, EventArgs e)
    {
        try
        {
            string nombre = Txt_upnombre.Text.Trim();
            string apellido = Txt_upapellido.Text.Trim();
            string cedula = Txt_upcedula.Text.Trim();
            string telefono = Txt_uptelefono.Text.Trim();
            string direccion = Txt_updirrecion.Text.Trim();
            String a = Txt_id.Text;
            int aux = Int32.Parse(a);
            if (!nombre.Equals("") && !apellido.Equals("") && !cedula.Equals("") && !telefono.Equals("") && !direccion.Equals(""))
            {
                if (objver.VerificarCedula(cedula))
                {
                    objpropietario.UpdatePropietario(aux, nombre, apellido, cedula, direccion, telefono);
                    Response.Redirect("insert_propietario.aspx");

                }
                else {
                    Response.Write("<script language=javascript>alert('Cedula Incorrecta');</script>");
                }
               

            }
            else
            {

                Response.Write("<script language=javascript>alert('Seleccione un usuario');</script>");
            }

        }
        catch (Exception)
        {


        }
    }
    public void VaciarCajasUp()
    {

        Txt_upnombre.Text = "";
        Txt_upapellido.Text = "";
        Txt_upcedula.Text = "";
        Txt_uptelefono.Text = "";
        Txt_updirrecion.Text = "";

    }
}