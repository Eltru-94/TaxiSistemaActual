using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Descripción breve de Procesospropietario
/// </summary>
public class Procesospropietario
{
    conexiondb objconexion;
    public Procesospropietario()
    {
        objconexion = new conexiondb();
    }

    public void deletepropietario(int id)
    {
        try
        {
            objconexion.OpenConexion();

            SqlCommand cmd = new SqlCommand("dbo.SP_DELETE_PROPIETARIO", objconexion.Conexion());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@PRO_VEH_ID", SqlDbType.Int);

            cmd.Parameters["@PRO_VEH_ID"].Value = id;



            cmd.ExecuteNonQuery();
            objconexion.closeConexion();


        }

        catch (Exception ex)
        {

        }
    }


    public void UpdatePropietario(int id, String nombre, String apellido, String cedula, String direccion, String telefono)
    {

        try
        {

            objconexion.OpenConexion();
            SqlCommand cmd = new SqlCommand("dbo.SP_UPDATE_PROPIETARIO", objconexion.Conexion());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@PRO_VEH_ID", SqlDbType.Int);
            cmd.Parameters.Add("@PRO_VEH_NOMBRE", SqlDbType.Char, 50);
            cmd.Parameters.Add("@PRO_VEH_APELLIDO", SqlDbType.Char, 50);
            cmd.Parameters.Add("@PRO_VEH_CEDULA", SqlDbType.Char, 13);
            cmd.Parameters.Add("@PRO_VEH_DIRECCION", SqlDbType.Char, 50);
            cmd.Parameters.Add("@PRO_VEH_TELEFONO", SqlDbType.Char, 10);

            cmd.Parameters["@PRO_VEH_ID"].Value = id;
            cmd.Parameters["@PRO_VEH_NOMBRE"].Value = nombre;
            cmd.Parameters["@PRO_VEH_APELLIDO"].Value = apellido;
            cmd.Parameters["@PRO_VEH_CEDULA"].Value = cedula;
            cmd.Parameters["@PRO_VEH_DIRECCION"].Value = direccion;
            cmd.Parameters["@PRO_VEH_TELEFONO"].Value = telefono;
            cmd.ExecuteNonQuery();
            objconexion.closeConexion();


        }

        catch (Exception ex)
        {

        }

    }

    public DataTable Propietario_filtro(String dato)
    {
        DataTable datos = new DataTable();
        try
        {

            objconexion.closeConexion();
            SqlCommand procedimiento = new SqlCommand();
            procedimiento.Connection = objconexion.Conexion();
            procedimiento.CommandType = System.Data.CommandType.StoredProcedure;
            procedimiento.CommandText = "dbo.SP_SELECT_TBL_PROPIETARIO_FILTRO";
            SqlParameter dato_buscar = new SqlParameter();
            dato_buscar.ParameterName = "@USU_NOMBRE";
            dato_buscar.SqlDbType = System.Data.SqlDbType.VarChar;
            dato_buscar.Value = dato;
            procedimiento.Parameters.Add(dato_buscar);
            SqlDataAdapter sql_datos = new SqlDataAdapter(procedimiento);

            sql_datos.Fill(datos);
            int contador = datos.Rows.Count;
            if (contador != 0)
            {
                datos.Columns[0].ColumnName = "ID";
                datos.Columns[1].ColumnName = "NOMBRE";
                datos.Columns[2].ColumnName = "APELLIDO";
                datos.Columns[3].ColumnName = "CEDULA";
                datos.Columns[4].ColumnName = "DIRECCION";
                datos.Columns[5].ColumnName = "TELEFONO";
                datos.Columns[6].ColumnName = "ESTADO";
            }
            objconexion.closeConexion();
        }
        catch (Exception)
        {

        }
        return datos;
    }

    public void Insert_Propietario(String nombre, String apellido, String cedula, String direccion, String telefono, int estado)
    {

        try
        {
            objconexion.OpenConexion();

            SqlCommand cmd = new SqlCommand("dbo.SP_INSERT_PROPIETARIO_VEH",objconexion.Conexion());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@PRO_VEH_NOMBRE", SqlDbType.Char, 50);
            cmd.Parameters.Add("@PRO_VEH_APELLIDO", SqlDbType.Char, 50);
            cmd.Parameters.Add("@PRO_VEH_CEDULA", SqlDbType.Char, 13);
            cmd.Parameters.Add("@PRO_VEH_DIRECCION", SqlDbType.Char, 50);
            cmd.Parameters.Add("@PRO_VEH_TELEFONO", SqlDbType.Char, 10);
            cmd.Parameters.Add("@PRO_VEH_ESTADO", SqlDbType.Int);

            cmd.Parameters["@PRO_VEH_NOMBRE"].Value = nombre;
            cmd.Parameters["@PRO_VEH_APELLIDO"].Value = apellido;
            cmd.Parameters["@PRO_VEH_CEDULA"].Value = cedula;
            cmd.Parameters["@PRO_VEH_DIRECCION"].Value = direccion;
            cmd.Parameters["@PRO_VEH_TELEFONO"].Value = telefono;
            cmd.Parameters["@PRO_VEH_ESTADO"].Value = estado;

           
            cmd.ExecuteNonQuery();
            objconexion.closeConexion();

        }

        catch (Exception ex)
        {

        }

    }
}