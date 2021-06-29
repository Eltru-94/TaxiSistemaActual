<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ingreso_chofer.aspx.cs" Inherits="ingreso_chofer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <form runat="server">

        <table class="w-100">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td style="width: 220px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="text-center" style="font-weight: bold; font-size: xx-large; color: #004085; width: 287px">INGRESO CHOFER</td>
                <td style="width: 220px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td style="width: 220px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <div class="text-center">
                        <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#ModalIngreso">Crear Chofer</button>
                    </div>
                </td>
                <td style="width: 220px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td style="width: 220px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="text-right" style="width: 116px">Dato Buscar: </td>
                <td>
                    <div class="text-center">
                        <asp:TextBox ID="Txt_Buscar_chofer" runat="server"></asp:TextBox>
                    </div>
                </td>
                <td style="width: 220px">
                    <asp:Button CssClass="btn btn-primary" ID="Btn_Buscar" runat="server" Text="Buscar" OnClick="Btn_Buscar_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td style="width: 220px">
                    <asp:TextBox ID="Txt_id" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                  <asp:Button ID="Btn_eliminar" CssClass="btn btn-secondary" runat="server" OnClick="Btn_eliminar_Click" Text="ELIMINAR" Enabled="False" />
                  
                </td>
                <td>
                    <div class="text-center">
                          <input id="Btn_Editar" class="btn btn-primary" data-toggle="modal" runat="server" data-target="#ModalUpdate" type="button" value="EDITAR" />

                    </div>
                      </td>
                <td style="width: 220px">
                    <asp:Button ID="Btn_nueva" CssClass="btn btn-secondary" runat="server" OnClick="Btn_nueva_Click" Text="NUEVA SELECCION" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td style="width: 220px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td colspan="3" rowspan="4">
                    <asp:GridView ID="gw_Select_chofer" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="gw_Select_chofer_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ButtonType="Button" SelectText="SELECCIONAR" ShowSelectButton="True" />
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
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td style="width: 220px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td style="width: 220px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td style="width: 220px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td style="width: 220px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td style="width: 220px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td style="width: 220px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>





        <div class="modal fade" id="ModalUpdate" tabindex="-1" role="dialog" aria-labelledby="ModalUpdateLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="ModalUpdateLabel">Actualizar Datos</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="form-control">
                            <asp:Label ID="Lbl_upchonombre" runat="server" Text="Nombre : ">          </asp:Label>
                            <asp:TextBox ID="Txt_upchonombre" runat="server" MaxLength="50" placeholder="  NOMBRE"></asp:TextBox>
                        </div>
                        <br />
                        <br />
                        <div class="form-control">
                            <asp:Label ID="Lbl_upchoapellido" runat="server" Text="Apellido : ">          </asp:Label>
                            <asp:TextBox ID="Txt_upchoapellido" runat="server" MaxLength="50" placeholder="  APELLIDO"></asp:TextBox>
                        </div>
                        <br />
                        <br />
                        <div class="form-control">
                            <asp:Label ID="Lbl_upchocedula" runat="server" Text="Cedula : ">          </asp:Label>
                            <asp:TextBox ID="Txt_upchocedula" runat="server" MaxLength="13" placeholder="  CEDULA"></asp:TextBox>
                        </div>
                        <br />
                        <br />
                        <div class="form-control">
                            <asp:Label ID="Lbl_upchotelefono" runat="server" Text="Telefono : ">          </asp:Label>
                            <asp:TextBox ID="Txt_upchotelefono" runat="server" MaxLength="10" placeholder="  TELEFONO"></asp:TextBox>
                        </div>
                        <br />
                        <br />

                        <div class="form-control">
                            <asp:Label ID="Lbl_upchoDirreccion" runat="server" Text="Direccion : ">          </asp:Label>
                            <asp:TextBox ID="Txt_upchodirrecion" runat="server" MaxLength="50" placeholder=" Direccion"></asp:TextBox>
                        </div>

                        <div class="modal-footer">
                            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                            <asp:Button CssClass="btn btn-primary" ID="Btn_Actualizar_chofer" runat="server" Text="Guardar Cambios" OnClick="Btn_Actualizar_chofer_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>









        <div class="modal fade" id="ModalIngreso" tabindex="-1" role="dialog" aria-labelledby="ModalIngresoLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="ModalIngresoLabel">Ingreso Datos Chofer</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="form-control">
                            <asp:Label ID="Lbl_ingchonombre" runat="server" Text="Nombre : ">          </asp:Label>
                            <asp:TextBox ID="Txt_ingchonombre" runat="server" MaxLength="50" placeholder="  NOMBRE"></asp:TextBox>
                        </div>
                        <br />
                        <br />
                        <div class="form-control">
                            <asp:Label ID="Lbl_ingchoapellido" runat="server" Text="Apellido : ">          </asp:Label>
                            <asp:TextBox ID="Txt_ingchoapellido" runat="server" MaxLength="50" placeholder="  APELLIDO"></asp:TextBox>
                        </div>
                        <br />
                        <br />
                        <div class="form-control">
                            <asp:Label ID="Lbl_ingchocedula" runat="server" Text="Cedula : ">          </asp:Label>
                            <asp:TextBox ID="Txt_ingchocedula" runat="server" MaxLength="13" placeholder="  CEDULA"></asp:TextBox>
                        </div>
                        <br />
                        <br />
                        <div class="form-control">
                            <asp:Label ID="Lbl_ingchotelefono" runat="server" Text="Telefono : ">          </asp:Label>
                            <asp:TextBox ID="Txt_ingchotelefono" runat="server" MaxLength="10" placeholder="  TELEFONO"></asp:TextBox>
                        </div>
                        <br />
                        <br />

                        <div class="form-control">
                            <asp:Label ID="Lbl_ingchoDirreccion" runat="server" Text="Direccion : ">          </asp:Label>
                            <asp:TextBox ID="Txt_ingchodirrecion" runat="server" MaxLength="50" placeholder=" Direccion"></asp:TextBox>
                        </div>

                        <div class="modal-footer">
                            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                            <asp:Button CssClass="btn btn-primary" ID="Btn_Ingreso_chofer" runat="server" Text="Guardar Propietario" OnClick="Btn_Ingresocho_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>












    </form>
</asp:Content>

