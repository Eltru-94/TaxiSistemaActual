using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Descripción breve de Procesoslogin
/// </summary>
public class Procesoslogin
{
    private String nombreUsu;
    private String apellidoUsu;
    public conexiondb objconexion;
    private DataTable datos = new DataTable();

    public Procesoslogin()
    {
        objconexion = new conexiondb();
    }

    public int verificadorLogin(String usu, String cla)
    {
        objconexion.OpenConexion();
        SqlCommand procedimiento = new SqlCommand();
        procedimiento.Connection = objconexion.Conexion();
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
        SqlDataAdapter sql_datos = new SqlDataAdapter(procedimiento);
        sql_datos.Fill(datos);
        int contador = datos.Rows.Count;
        objconexion.closeConexion();
        return contador;

    }

    public String nombre() {
        return datos.Rows[0]["USU_NOMBRE"].ToString();
    }
    public String cedula()
    {
        return datos.Rows[0]["USU_CEDULA"].ToString();
    }
    public String telefono()
    {
        return datos.Rows[0]["USU_TELEFONO"].ToString();
    }
    public String apellido()
    {
        return datos.Rows[0]["USU_APELLIDO"].ToString();
    }
    public String usuario()
    {
        return datos.Rows[0]["USU_USUARIO"].ToString();
    }
    public String clave()
    {
        return datos.Rows[0]["USU_CLAVE"].ToString();
    }
}