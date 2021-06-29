<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ingreso_usuario.aspx.cs" Inherits="ingreso_usuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <form id="form1" runat="server">
        <table class="w-100">
            <tr>
                <td style="width: 126px">&nbsp;</td>
                <td style="width: 212px">&nbsp;</td>
                <td style="width: 328px">&nbsp;</td>
                <td style="width: 213px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 126px">&nbsp;</td>
                <td style="width: 212px">&nbsp;</td>
                <td class="text-center" style="font-weight: bold; font-size: xx-large; color: #004085; width: 328px">INGRESO USUARIO</td>
                <td style="width: 213px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 126px">&nbsp;</td>
                <td style="width: 212px">&nbsp;</td>
                <td style="width: 328px">&nbsp;</td>
                <td style="width: 213px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="text-left" style="width: 126px">
                    <div class="text-center">
                        <asp:Button CssClass="btn btn-primary" ID="Btn_Atras_Ingreso" runat="server" Text="Atras" Style="height: 31px" OnClick="Btn_Atras_Ingreso_Click" />
                    </div>
                </td>
                <td style="width: 212px">&nbsp;</td>
                <td>
                    <div class="text-center">
                        <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#exampleModal">Crear Usuario</button>
                    </div>

                </td>
                <td style="width: 213px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 126px">&nbsp;</td>
                <td style="width: 212px">&nbsp;</td>
                <td style="width: 328px">&nbsp;</td>
                <td style="width: 213px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 126px">&nbsp;</td>
                <td class="text-right" style="width: 212px">Dato Buscar: </td>
                <td style="width: 328px" class="text-center">
                    <asp:TextBox ID="Txt_datoBuscar" runat="server"></asp:TextBox>
                </td>
                <td style="width: 213px">
                    <asp:Button CssClass="btn btn-primary" ID="Btn_Buscar" runat="server" Text="Buscar" OnClick="Btn_Buscar_Click" Style="height: 31px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 126px">&nbsp;</td>
                <td style="width: 212px">&nbsp;</td>
                <td style="width: 328px">&nbsp;</td>
                <td style="width: 213px">
                    <asp:TextBox ID="Txt_id" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 126px">&nbsp;</td>
                <td style="width: 212px">
                    <div class="text-right">
                        <asp:Button ID="Btn_eliminar" CssClass="btn btn-secondary" runat="server" OnClick="Btn_eliminar_Click" Text="ELIMINAR" />
                    </div>
                </td>
                <td style="width: 328px">
                    <div class="text-center">
                        <input id="Btn_Editar" class="btn btn-primary" data-toggle="modal" runat="server" data-target="#ModalEditar" type="button" value="EDITAR" />
                    </div>
                </td>
                <td style="width: 213px">
                    <div class="text-left">
                        <asp:Button ID="Btn_nueva" CssClass="btn btn-secondary" runat="server" OnClick="Btn_nuevo_Click" Text="NUEVA SELECCION" />
                    </div>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 126px">&nbsp;</td>
                <td style="width: 212px">&nbsp;</td>
                <td style="width: 328px">&nbsp;</td>
                <td style="width: 213px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 126px">&nbsp;</td>
                <td colspan="3" rowspan="4">
                    <asp:GridView ID="gv_datos" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged_ELIMINAR">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />

                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 126px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 126px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 126px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
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
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                        <asp:Button CssClass="btn btn-primary" ID="Btn_crear_usuario" runat="server" Text="Guarda datos" OnClick="Guardar_Usuario" />
                    </div>
                </div>
            </div>
        </div>

        <--------------------->


        <div class="modal fade" id="ModalEditar" tabindex="-1" role="dialog" aria-labelledby="LblModalEditar" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="LblModalEditar">Editar Datos Usuario</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">X</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <asp:TextBox ID="Txt_upnombre" runat="server" MaxLength="50" placeholder="selecione el usuario"></asp:TextBox>
                        <asp:TextBox ID="Txt_upapellido" runat="server" MaxLength="50" placeholder="selecione el usuario"></asp:TextBox>
                        <br />

                        <br />
                        <asp:TextBox ID="Txt_upcedula" runat="server" MaxLength="13" placeholder="selecione el usuario"></asp:TextBox>
                        <asp:TextBox ID="Txt_uptelefono" runat="server" MaxLength="10" placeholder="selecione el usuario"></asp:TextBox>
                        <br />
                        <br />
                        <asp:TextBox ID="Txt_upusuario" runat="server" MaxLength="10" placeholder="selecione el usuario"></asp:TextBox>
                        <asp:TextBox ID="Txt_upclave" runat="server" MaxLength="10" placeholder="selecione el usuario"></asp:TextBox>
                        <br />
                        <br />
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                        <asp:Button CssClass="btn btn-primary" ID="Btn_Update" runat="server" OnClick="Btn_Update_Click" Text="Guarda Cambios" />
                    </div>
                </div>
            </div>
        </div>


















    </form>
</asp:Content>

