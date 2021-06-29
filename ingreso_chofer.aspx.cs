using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ingreso_chofer : System.Web.UI.Page
{
    ProcesosChofer objProcesoschofer;
    Verificacion objVer = new Verificacion();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            objProcesoschofer = new ProcesosChofer();
          
            if (!IsPostBack)
            {
                this.Btn_eliminar.Attributes.Add("OnClick", "javascript:if(confirm('Seguro que desea eliminar? .') == false) return false;"); //Button Aceptar & Cancelar

            }
            this.gw_Select_chofer.DataSource = objProcesoschofer.selectcho_filtro("");
            gw_Select_chofer.DataBind();
        }
        catch (Exception)
        {

        }


    }



    

    protected void Btn_Ingresocho_Click(object sender, EventArgs e)
    {
        try
        {
            string nombre = Txt_ingchonombre.Text;
            string apellido = Txt_ingchoapellido.Text;
            string cedula = Txt_ingchocedula.Text;
            string telefono = Txt_ingchotelefono.Text;
            string direccion = Txt_ingchodirrecion.Text;
            if (!nombre.Equals("") && !apellido.Equals("") && !cedula.Equals("") && !telefono.Equals("") && !direccion.Equals(""))
            {
                if (objVer.VerificarCedula(cedula))
                {

                    objProcesoschofer.Insert_Chofer(nombre, apellido, cedula, telefono, direccion, 1);
                    vaciarCajas();
                    Response.Redirect("ingreso_chofer.aspx");

                }
                else
                {
                    Response.Write("<script language=javascript>alert('Cedula Incorrecta');</script>");
                }


            }
            else
            {
                Response.Write("<script language=javascript>alert('Por favor llene todos los campos');</script>");
            }
        }
        catch
        {

        }


    }

    protected void Btn_Buscar_Click(object sender, EventArgs e)
    {
        try
        {
            this.gw_Select_chofer.DataSource = objProcesoschofer.selectcho_filtro(Txt_Buscar_chofer.Text);
            gw_Select_chofer.DataBind();
        }
        catch (Exception)
        {

        }
    }
    public void vaciarCajas()
    {
        Txt_ingchonombre.Text = "";
        Txt_ingchoapellido.Text = "";
        Txt_ingchocedula.Text = "";
        Txt_ingchodirrecion.Text = "";
        Txt_ingchotelefono.Text = "";

        Txt_upchonombre.Text = "";
        Txt_upchoapellido.Text = "";
        Txt_upchocedula.Text = "";
        Txt_upchotelefono.Text ="";
        Txt_upchodirrecion.Text = "";


    }


 

    protected void Btn_eliminar_Click(object sender, EventArgs e)
    {
        try
        {
            int id = Int32.Parse(Txt_id.Text);
            if (id != -1) {
                objProcesoschofer.deletechofer(id);
                Response.Redirect("ingreso_chofer.aspx");
            }
        }
        catch (Exception) {

        }
    }

    protected void Btn_nueva_Click(object sender, EventArgs e)
    {
        try
        {
            Btn_eliminar.Enabled = false;
            gw_Select_chofer.SelectedIndex = -1;
            vaciarCajas();
        }
        catch (Exception) { }
    }

   

    protected void Btn_Actualizar_chofer_Click(object sender, EventArgs e)
    {

        try {
            int id = Int32.Parse(Txt_id.Text);
            string nombre = Txt_upchonombre.Text.Trim();
            string apellido = Txt_upchoapellido.Text.Trim();
            string cedula = Txt_upchocedula.Text.Trim();
            string telefono = Txt_upchotelefono.Text.Trim();
            string direccion = Txt_upchodirrecion.Text.Trim();
            if (!nombre.Equals("")&&!apellido.Equals("")&&!cedula.Equals("")&&!telefono.Equals("")&&!direccion.Equals(""))
            {
                if (objVer.VerificarCedula(cedula))
                {
                    objProcesoschofer.UpdateChofer(id, nombre, apellido, cedula, telefono, direccion);
                    vaciarCajas();
                    Response.Redirect("ingreso_chofer.aspx");
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
        catch (Exception) {


        }

      
        
    }

    protected void gw_Select_chofer_SelectedIndexChanged(object sender, EventArgs e)
    {
        String valor = gw_Select_chofer.SelectedRow.Cells[1].Text;
        if (!valor.Equals("-1"))
        {
            Txt_upchonombre.Text = gw_Select_chofer.SelectedRow.Cells[2].Text;
            Txt_upchoapellido.Text = gw_Select_chofer.SelectedRow.Cells[3].Text;
            Txt_upchocedula.Text = gw_Select_chofer.SelectedRow.Cells[4].Text;
            Txt_upchotelefono.Text = gw_Select_chofer.SelectedRow.Cells[5].Text;
            Txt_upchodirrecion.Text = gw_Select_chofer.SelectedRow.Cells[6].Text;

        }
        Txt_id.Text = valor;
        Btn_Buscar_Click(null, null);
        Btn_eliminar.Enabled = true;
        this.Btn_eliminar.BackColor = Color.FromArgb(0, 0, 125);
    }
}







