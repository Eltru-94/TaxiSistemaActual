using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Descripción breve de ProcesosUsuario
/// </summary>
public class ProcesosUsuario
{
    conexiondb objconexion = new conexiondb();
    public ProcesosUsuario()
    {

    }

    public void UpdateUsuario(int id, String nombre, String apellido, String cedula, String telefono, String usuario, String clave)
    {

        try
        {

            SqlCommand cmd = new SqlCommand("dbo.SP_UPDATE_TBL_USUARIO", objconexion.Conexion());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@USU_ID", SqlDbType.Int);
            cmd.Parameters.Add("@USU_NOMBRE", SqlDbType.Char, 50);
            cmd.Parameters.Add("@USU_APELLIDO", SqlDbType.Char, 50);
            cmd.Parameters.Add("@USU_CEDULA", SqlDbType.Char, 13);
            cmd.Parameters.Add("@USU_TELEFONO", SqlDbType.Char, 10);
            cmd.Parameters.Add("@USU_USUARIO", SqlDbType.Char, 10);
            cmd.Parameters.Add("@USU_CLAVE", SqlDbType.Char, 10);

            cmd.Parameters["@USU_ID"].Value = id;
            cmd.Parameters["@USU_NOMBRE"].Value = nombre;
            cmd.Parameters["@USU_APELLIDO"].Value = apellido;
            cmd.Parameters["@USU_CEDULA"].Value = cedula;
            cmd.Parameters["@USU_TELEFONO"].Value = telefono;
            cmd.Parameters["@USU_USUARIO"].Value = usuario;
            cmd.Parameters["@USU_CLAVE"].Value = clave;




            objconexion.OpenConexion();
            cmd.ExecuteNonQuery();


        }

        catch (Exception ex)
        {

        }

    }
    public DataTable Usuarios_filtro(String dato)
    {
        DataTable datos = new DataTable();
        try
        {
            objconexion.OpenConexion();
            SqlCommand procedimiento = new SqlCommand();
            procedimiento.Connection = objconexion.Conexion();
            procedimiento.CommandType = System.Data.CommandType.StoredProcedure;
            procedimiento.CommandText = "dbo.SP_SELECT_TBL_USUARIO_FILTRO";
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
                datos.Columns[4].ColumnName = "TELEFONO";
                datos.Columns[5].ColumnName = "USUARIO";
                datos.Columns[6].ColumnName = "CLAVE";

            }
            objconexion.closeConexion();

        }
        catch (Exception)
        {


        }


        return datos;


    }

    public void Insert_Usuario(String nombre, String apellido, String cedula, String telefono, String usuario, String clave, int estado)
    {

        try
        {

            objconexion.OpenConexion();
            SqlCommand cmd = new SqlCommand("dbo.SP_INSERT_TBL_USUARIO", objconexion.Conexion());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@USU_NOMBRE", SqlDbType.Char, 50);
            cmd.Parameters.Add("@USU_APELLIDO", SqlDbType.Char, 50);
            cmd.Parameters.Add("@USU_CEDULA", SqlDbType.Char, 13);
            cmd.Parameters.Add("@USU_TELEFONO", SqlDbType.Char, 10);
            cmd.Parameters.Add("@USU_USUARIO", SqlDbType.Char, 10);
            cmd.Parameters.Add("@USU_CLAVE", SqlDbType.Char, 10);
            cmd.Parameters.Add("@USU_ESTADO", SqlDbType.Int);

            cmd.Parameters["@USU_NOMBRE"].Value = nombre;
            cmd.Parameters["@USU_APELLIDO"].Value = apellido;
            cmd.Parameters["@USU_CEDULA"].Value = cedula;
            cmd.Parameters["@USU_TELEFONO"].Value = telefono;
            cmd.Parameters["@USU_USUARIO"].Value = usuario;
            cmd.Parameters["@USU_CLAVE"].Value = clave;
            cmd.Parameters["@USU_ESTADO"].Value = estado;


            cmd.ExecuteNonQuery();
            objconexion.closeConexion();

        }

        catch (Exception ex)
        {

        }

    }

    public void Delete_Usuario(int id)
    {

        try
        {
            objconexion.OpenConexion();

            SqlCommand cmd = new SqlCommand("dbo.SP_DELETE_USUARIO",objconexion.Conexion());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@USU_ID ", SqlDbType.Int);

            cmd.Parameters["@USU_ID "].Value = id;



            cmd.ExecuteNonQuery();
            objconexion.closeConexion();


        }

        catch (Exception ex)
        {

        }

    }
}