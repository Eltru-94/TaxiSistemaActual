<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="insert_propietario.aspx.cs" Inherits="insert_propirtario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <form id="form1" runat="server">
        <table class="w-100">
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Ingreso Propietario Taxi</h5>
                            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="form-control">
                            <asp:Label ID="Lbl_nombre" runat="server" Text="Nombre : ">          </asp:Label>
                            <asp:TextBox ID="Txt_nombre" runat="server" MaxLength="50" placeholder="  NOMBRE"></asp:TextBox>
                                </div>
                            <br />
                            <br />
                            <div class="form-control">
                            <asp:Label ID="Lbl_apellido" runat="server" Text="Apellido : ">          </asp:Label>
                            <asp:TextBox ID="Txt_apellido" runat="server" MaxLength="50" placeholder="  APELLIDO"></asp:TextBox>
                                </div>
                            <br />
                            <br />
                            <div class="form-control">
                             <asp:Label ID="Lbl_cedula" runat="server" Text="Cedula : ">          </asp:Label>
                            <asp:TextBox ID="Txt_cedula" runat="server" MaxLength="13" placeholder="  CEDULA"></asp:TextBox>
                                </div>
                            <br />
                            <br />
                              <div class="form-control">
                              <asp:Label ID="Lbl_telefono" runat="server" Text="Telefono : ">          </asp:Label>
                            <asp:TextBox ID="Txt_telefono" runat="server" MaxLength="10" placeholder="  TELEFONO"></asp:TextBox>
                                  </div>
                            <br />
                            <br />
                           
                            <div class="form-control">
                                   <asp:Label ID="lbl_direccion" runat="server" Text="Direccion : ">          </asp:Label>
                                 <asp:TextBox ID="Txt_direccion" runat="server" MaxLength="10" placeholder=" Direccion"></asp:TextBox>
                            </div>
                           
                           
                           
                            
                           

                        </div>
                        <div class="modal-footer">
                            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                            <asp:Button CssClass="btn btn-primary" ID ="Btn_crear_propirtario" runat="server" Text="Guardar Propietario" OnClick="Guardar_Propietario" />
                        </div>
                    </div>
                </div>
            </div>
            <tr>
                <td style="width: 139px">&nbsp;</td>
                <td style="width: 217px">&nbsp;</td>
                <td style="width: 278px">&nbsp;</td>
                <td style="width: 123px">&nbsp;</td>
                <td style="width: 175px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 139px">&nbsp;</td>
                <td style="width: 217px">&nbsp;</td>
                <td class="text-center" style="font-weight: bold; font-size: xx-large; color: #004085; width: 278px">INGRESO PROPIETARIO</td>
                <td style="width: 123px">&nbsp;</td>
                <td style="width: 175px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 139px">&nbsp;</td>
                <td style="width: 217px">&nbsp;</td>
                <td style="width: 278px">&nbsp;</td>
                <td style="width: 123px">&nbsp;</td>
                <td style="width: 175px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 139px">
                    <div class="text-center">
                    <asp:Button CssClass="btn btn-primary" ID="Btn_Atras_Ingreso" runat="server" Text="Atras" style="height: 31px" OnClick="Btn_Atras_Ingreso_Click" />
                        </div>
                        </td>
                <td style="width: 217px">&nbsp;</td>
                <td style="width: 278px">
                    <div class="text-center">
                        <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#exampleModal">Crear Propietario</button>
                    </div>
                </td>
                <td style="width: 123px">&nbsp;</td>
                <td style="width: 175px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 139px">&nbsp;</td>
                <td style="width: 217px">&nbsp;</td>
                <td style="width: 278px">&nbsp;</td>
                <td style="width: 123px">&nbsp;</td>
                <td style="width: 175px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 139px">&nbsp;</td>
                <td class="text-right" style="width: 217px">Dato Buscar: </td>
                <td style="width: 278px" class="text-center">
                    <asp:TextBox ID="Txt_datoBuscar_Propietario" runat="server"></asp:TextBox>
                </td>
                <td style="width: 123px">
                    <asp:Button CssClass="btn btn-primary" ID="Btn_Buscar" runat="server" Text="Buscar" OnClick="Btn_Buscar_Click" />
                </td>
                <td style="width: 175px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 139px">&nbsp;</td>
                <td style="width: 217px">&nbsp;</td>
                <td style="width: 278px">&nbsp;</td>
                <td style="width: 123px">
                    <asp:TextBox ID="Txt_id" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td style="width: 175px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 139px">&nbsp;</td>
                <td style="width: 217px" class="text-left">
                    <div class="text-right">
                         <asp:Button ID="Btn_eliminar" CssClass="btn btn-secondary" runat="server" OnClick="Btn_eliminar_Click" Text="ELIMINAR" />
                    </div>
                       
                    </td>
                <td style="width: 278px" class="text-left">
                     <div class="text-center">
                        <input id="Btn_Editar" class="btn btn-primary" data-toggle="modal" runat="server" data-target="#ModalEditar" type="button" value="EDITAR" /></td>
                </div>
                <td style="width: 123px">
                        <asp:Button ID="Btn_nueva" CssClass="btn btn-secondary" runat="server" OnClick="Btn_nueva_Click" Text="NUEVA SELECCION" />
                    </td>
                <td style="width: 175px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 139px">&nbsp;</td>
                <td style="width: 217px">&nbsp;</td>
                <td style="width: 278px">&nbsp;</td>
                <td style="width: 123px">&nbsp;</td>
                <td style="width: 175px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 139px">&nbsp;</td>
                <td style="width: 217px">&nbsp;</td>
                <td style="width: 278px" rowspan="5">
                    <asp:GridView ID="Datos_Propietario" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="Datos_Propietario_SelectedIndexChanged">
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
                <td style="width: 123px">&nbsp;</td>
                <td style="width: 175px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 139px">&nbsp;</td>
                <td style="width: 217px">&nbsp;</td>
                <td style="width: 123px">&nbsp;</td>
                <td style="width: 175px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 139px">&nbsp;</td>
                <td style="width: 217px">&nbsp;</td>
                <td style="width: 123px">&nbsp;</td>
                <td style="width: 175px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 139px">&nbsp;</td>
                <td style="width: 217px">&nbsp;</td>
                <td style="width: 123px">&nbsp;</td>
                <td style="width: 175px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 139px">&nbsp;</td>
                <td style="width: 217px">&nbsp;</td>
                <td style="width: 123px">&nbsp;</td>
                <td style="width: 175px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 139px">&nbsp;</td>
                <td style="width: 217px">&nbsp;</td>
                <td style="width: 278px">&nbsp;</td>
                <td style="width: 123px">&nbsp;</td>
                <td style="width: 175px">&nbsp;</td>
            </tr>
        </table>

      


        <div class="modal fade" id="ModalEditar" tabindex="-1" role="dialog" aria-labelledby="LblModalEditar" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="LblModalEditar">Editar Datos Propietario</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">X</span>
                        </button>
                    </div>
                    <div class="modal-body">
                          <div class="modal-body">
                            <div class="form-control">
                            <asp:Label ID="Lbl_upnombre" runat="server" Text="Nombre : ">          </asp:Label>
                            <asp:TextBox ID="Txt_upnombre" runat="server" MaxLength="50" placeholder="  NOMBRE"></asp:TextBox>
                                </div>
                            <br />
                            <br />
                            <div class="form-control">
                            <asp:Label ID="Lbl_upapellido" runat="server" Text="Apellido : ">          </asp:Label>
                            <asp:TextBox ID="Txt_upapellido" runat="server" MaxLength="50" placeholder="  APELLIDO"></asp:TextBox>
                                </div>
                            <br />
                            <br />
                            <div class="form-control">
                             <asp:Label ID="Lblupcedula" runat="server" Text="Cedula : ">          </asp:Label>
                            <asp:TextBox ID="Txt_upcedula" runat="server" MaxLength="13" placeholder="  CEDULA"></asp:TextBox>
                                </div>
                            <br />
                            <br />
                              <div class="form-control">
                              <asp:Label ID="Lbl_uptelefono" runat="server" Text="Telefono : ">          </asp:Label>
                            <asp:TextBox ID="Txt_uptelefono" runat="server" MaxLength="10" placeholder="  TELEFONO"></asp:TextBox>
                                  </div>
                            <br />
                            <br />
                           
                            <div class="form-control">
                                   <asp:Label ID="Lbl_Dirreccion" runat="server" Text="Direccion : ">          </asp:Label>
                                 <asp:TextBox ID="Txt_updirrecion" runat="server" MaxLength="50" placeholder=" Direccion"></asp:TextBox>
                            </div>
                           
                           
                           
                            
                           

                        </div>
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

