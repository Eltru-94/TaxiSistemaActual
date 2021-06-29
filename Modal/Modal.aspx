<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Modal.aspx.cs" Inherits="Modal_Modal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom fonts for this template-->
    <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- Page level plugin CSS-->
    <link href="../vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="../css/sb-admin.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Editar Datos Usuario</h5>
                    </div>
                    <div class="modal-body">
                        <asp:Label ID="lbl_nombre" runat="server" Text="Nombre : "></asp:Label>
                        <asp:TextBox ID="Txt_nombre" runat="server" MaxLength="50" placeholder="nombre"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Lbl_apellido" runat="server" Text="Apellido : "></asp:Label>
                        <asp:TextBox ID="Txt_apellido" runat="server" MaxLength="50" placeholder="apellido"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Lbl_cedula" runat="server" Text="Cedula : "></asp:Label>
                        <asp:TextBox ID="Txt_cedula" runat="server" MaxLength="13" placeholder="cedula"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Lbl_telefono" runat="server" Text="Telefono : "></asp:Label>
                        <asp:TextBox ID="Txt_telefono" runat="server" MaxLength="10" placeholder="telefono"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Lbl_usuario" runat="server" Text="Usuario : "></asp:Label>
                        <asp:TextBox ID="Txt_usuario" runat="server" MaxLength="10" placeholder="usuario"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Lbl_clave" runat="server" Text="Clave : "></asp:Label>
                        <asp:TextBox ID="Txt_clave" runat="server" MaxLength="10" placeholder="clave"></asp:TextBox>
                        <br />
                        <br />


                    </div>
                    <div class="modal-footer">

                        <asp:Button class="btn btn-secondary" ID="Btn_cancelar" runat="server" Text="Cancelar" OnClick="Btn_cancelar_Click" />
                        <asp:Button CssClass="btn btn-primary" ID="Btn_editar" runat="server" Text="Guarda datos" OnClick="Guardar_Usuario" />
                    </div>
                </div>
            </div>
        </div>

    </form>
</body>
</html>
