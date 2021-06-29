using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de ProcesosChofer
/// </summary>
public class ProcesosChofer
{
    conexiondb objconexion;
    public ProcesosChofer()
    {
        objconexion = new conexiondb();
    }

    public void Insert_Chofer(String nombre, String apellido, String cedula, String telefono, String direccion,int estado)
    {

        try
        {
            objconexion.OpenConexion();
            SqlCommand cmd = new SqlCommand("dbo.SP_INSERT_CHOFER", objconexion.Conexion());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@CHO_NOMBRE", SqlDbType.Char, 50);
            cmd.Parameters.Add("@CHO_APELLIDO", SqlDbType.Char, 50);
            cmd.Parameters.Add("@CHO_CEDULA", SqlDbType.Char, 13);
            cmd.Parameters.Add("@CHO_TELEFONO", SqlDbType.Char, 10);
            cmd.Parameters.Add("@CHO_DIRECCION", SqlDbType.Char, 50);
            cmd.Parameters.Add("@CHO_ESTADO", SqlDbType.Int);

            cmd.Parameters["@CHO_NOMBRE"].Value = nombre;
            cmd.Parameters["@CHO_APELLIDO"].Value = apellido;
            cmd.Parameters["@CHO_CEDULA"].Value = cedula;
            cmd.Parameters["@CHO_TELEFONO"].Value = telefono;
            cmd.Parameters["@CHO_DIRECCION"].Value = direccion;
            cmd.Parameters["@CHO_ESTADO"].Value = estado;



            cmd.ExecuteNonQuery();
            objconexion.closeConexion();

        }
        catch (Exception) {


        } 

    }

    public DataTable selectcho_filtro(String dato)
    {
        DataTable datos = new DataTable();
        try
        {
            objconexion.OpenConexion();

            SqlCommand procedimiento = new SqlCommand();
            procedimiento.Connection = objconexion.Conexion();
            procedimiento.CommandType = System.Data.CommandType.StoredProcedure;
            procedimiento.CommandText = "dbo.SP_SELECT_TBL_CHOFER_FILTRO";
            SqlParameter dato_buscar = new SqlParameter();
            dato_buscar.ParameterName = "@CHO_NOMBRE";
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
                datos.Columns[5].ColumnName = "DIRECCION";
              

            }
            objconexion.closeConexion();
        }
        catch (Exception) {


        }
        

        return datos;
    }


    public void deletechofer(int id)
    {
        try
        {
            objconexion.OpenConexion();

            SqlCommand cmd = new SqlCommand("dbo.SP_DELETE_TBL_CHOFER", objconexion.Conexion());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@CHO_ID", SqlDbType.Int);

            cmd.Parameters["@CHO_ID"].Value = id;



            cmd.ExecuteNonQuery();
            objconexion.closeConexion();


        }

        catch (Exception ex)
        {

        }
    }

    public void UpdateChofer(int id, String nombre, String apellido, String cedula, String telefono, String direccion)
    {

        try
        {

            SqlCommand cmd = new SqlCommand("dbo.SP_UPDATE_TBL_CHOFER", objconexion.Conexion());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@CHO_ID", SqlDbType.Int);
            cmd.Parameters.Add("@CHO_NOMBRE", SqlDbType.Char, 50);
            cmd.Parameters.Add("@CHO_APELLIDO", SqlDbType.Char, 50);
            cmd.Parameters.Add("@CHO_CEDULA", SqlDbType.Char, 13);
            cmd.Parameters.Add("@CHO_TELEFONO", SqlDbType.Char, 10);
            cmd.Parameters.Add("@CHO_DIRECCION", SqlDbType.Char, 50);
            

            cmd.Parameters["@CHO_ID"].Value = id;
            cmd.Parameters["@CHO_NOMBRE"].Value = nombre;
            cmd.Parameters["@CHO_APELLIDO"].Value = apellido;
            cmd.Parameters["@CHO_CEDULA"].Value = cedula;
            cmd.Parameters["@CHO_TELEFONO"].Value = telefono;
            cmd.Parameters["@CHO_DIRECCION"].Value = direccion;





            objconexion.OpenConexion();
            cmd.ExecuteNonQuery();


        }

        catch (Exception ex)
        {

        }

    }

}