using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Data;
using System.Configuration;
/// <summary>
/// Descripción breve de conexiondb
/// </summary>
public class conexiondb
{
    private SqlConnection conexiondatos;
    String conexion = "Data Source=ALEXANDER;Initial Catalog=Proyecto;Integrated Security=True";
    public String nombreUsu;
    public String apellidoUsu;
    public conexiondb()
    {
        conexiondatos = new SqlConnection(conexion);

    }

    public void OpenConexion() {

        conexiondatos.Open();
    }

    public void closeConexion()
    {

        conexiondatos.Close();
    }


    public SqlConnection Conexion() {

        return conexiondatos;
    }
    public SqlDataReader Funcionalidad(String usu, String cla)
    {
        SqlDataReader sql_datos=null;
        try
        {
            conexiondatos.Open();
            SqlCommand procedimiento = new SqlCommand();
            procedimiento.Connection = conexiondatos;
            procedimiento.CommandType = System.Data.CommandType.StoredProcedure;
            procedimiento.CommandText = "dbo.SELECT_ROL_FUNCION_LOGIN";

            SqlParameter usuario = new SqlParameter();
            SqlParameter clave = new SqlParameter();
            usuario.ParameterName = "@USU_USUARIO";
            usuario.SqlDbType = System.Data.SqlDbType.VarChar;
            usuario.Value = usu;
            procedimiento.Parameters.Add(usuario);

            clave.ParameterName = "@USU_CLAVE";
            clave.SqlDbType = System.Data.SqlDbType.VarChar;
            clave.Value = cla;
            procedimiento.Parameters.Add(clave);

            sql_datos = procedimiento.ExecuteReader();

        }
        catch (Exception) {

        }
        
        return sql_datos;
    }
    public void CerrarConexion()
    {
        conexiondatos.Close();
    }

}