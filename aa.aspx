<%@ Page Language="C#" AutoEventWireup="true" CodeFile="aa.aspx.cs" Inherits="aa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom fonts for this template-->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- Page level plugin CSS-->
    <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
    
    

         <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Ingreso Datos Usuario</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">X</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <asp:TextBox ID="Txt_nombre" runat="server" MaxLength="50" placeholder="nombre"></asp:TextBox>
                        <asp:TextBox ID="Txt_apellido" runat="server" MaxLength="50" placeholder="apellido"></asp:TextBox>
                        <br />
                        <br />
                        <asp:TextBox ID="Txt_cedula" runat="server" MaxLength="13" placeholder="cedula"></asp:TextBox>
                        <asp:TextBox ID="Txt_telefono" runat="server" MaxLength="10" placeholder="telefono"></asp:TextBox>
                        <br />
                        <br />
                        <asp:TextBox ID="Txt_usuario" runat="server" MaxLength="10" placeholder="usuario"></asp:TextBox>
                        <asp:TextBox ID="Txt_clave" runat="server" MaxLength="10" placeholder="clave"></asp:TextBox>
                        <br />
                        <br />


                    </div>
                    <table class="w-100">
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                        <asp:Button CssClass="btn btn-primary" ID="Btn_crear_usuario" runat="server" Text="Guarda datos" OnClick="Btn_Update_Click" />
                    </div>
                </div>
            </div>
        </div>

        <--------------------->


        <div class="modal fade" id="ModalEditar" tabindex="-1" role="dialog" aria-labelledby="LblModalEditar" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="LblModalEditar">Ingreso Datos Usuario</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">X</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <asp:TextBox ID="Txt_up_nombre" Text="" runat="server" MaxLength="50" ></asp:TextBox>
                        <asp:TextBox ID="Txt_up_apellido" Text=""  runat="server" MaxLength="50"></asp:TextBox>
                       


                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                        <asp:Button CssClass="btn btn-primary" ID="Btn_Update" runat="server" OnClick="Btn_Update_Click" Text="Guarda Cambios"  />
                    </div>
                </div>
            </div>
        </div>

         <table class="w-100">
             <tr>
                 <td>
                      <div class="text-center">
                        <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#exampleModal">Crear Usuario</button>
                    </div>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>
                     <input id="Button1" type="button" value="Boton 2" data-toggle="modal" data-target="#exampleModal" /></td>
                 <td>&nbsp;</td>
             </tr>
         </table>

    
    </form>
</body>
</html>
