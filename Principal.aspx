<%@ Page Title="Principal" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Principal.aspx.cs" Inherits="Principal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <form id="form1" runat="server">
        <table class="w-100">
            <tr>
                <td class="text-center" colspan="5" style="height: 137px">
                    <img alt="" src="imagenes/TaxiExpress.png" style="width: 467px; height: 81px" /></td>
            </tr>
            <tr>
                <td style="width: 214px">&nbsp;</td>
                <td style="width: 263px">&nbsp;</td>
                <td style="width: 260px">&nbsp;</td>
                <td style="width: 304px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="text-center" colspan="5">
                    <img alt="" src="imagenes/Bienvenido.png" style="width: 366px; height: 91px" /></td>
            </tr>
            <tr>
                <td style="width: 214px">&nbsp;</td>
                <td style="width: 263px">&nbsp;</td>
                <td style="width: 260px">&nbsp;</td>
                <td style="width: 304px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="text-right" style="width: 214px">
                    <asp:Label ID="Label1" runat="server" Text="NOMBRE : " CssClass="font-italic" style="font-family: 'Times New Roman'; text-decoration: underline; color: #000080; font-weight: bold;"></asp:Label>
                </td>
                <td class="text-center" style="width: 263px">
                    <asp:Label ID="Lbl_nombre" runat="server" CssClass="font-italic" style="font-family: 'Times New Roman'; text-decoration: underline; color: #000080;"></asp:Label>
                </td>
                <td class="text-center" style="width: 260px">
                    <asp:Label ID="Label2" runat="server" Text="APELLIDO : " CssClass="font-italic" style="font-family: 'Times New Roman'; text-decoration: underline; font-weight: bold; color: #000080;"></asp:Label>
                </td>
                <td class="text-center" style="width: 304px">
                    <asp:Label ID="Lbl_apellido" runat="server" CssClass="font-italic" style="font-family: 'Times New Roman'; text-decoration: underline; color: #000080;"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 214px">&nbsp;</td>
                <td style="width: 263px">&nbsp;</td>
                <td style="width: 260px">&nbsp;</td>
                <td style="width: 304px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 214px" class="text-right">
                    <asp:Label ID="Label3" runat="server" Text="TELEFONO : " CssClass="font-italic" style="font-family: 'Times New Roman'; text-decoration: underline; color: #000080; font-weight: bold;"></asp:Label>
                </td>
                <td class="text-center" style="width: 263px">
                    <asp:Label ID="Lbl_telefono" runat="server" CssClass="font-italic" style="font-family: 'Times New Roman'; text-decoration: underline; color: #000080;"></asp:Label>
                </td>
                <td class="text-center" style="width: 260px">
                    <asp:Label ID="Label4" runat="server" Text="CEDULA : " CssClass="font-italic" style="font-family: 'Times New Roman'; text-decoration: underline; font-weight: bold; color: #000080;"></asp:Label>
                </td>
                <td class="text-center" style="width: 304px">
                    <asp:Label ID="Lbl_cedula" runat="server" CssClass="font-italic" style="font-family: 'Times New Roman'; text-decoration: underline; color: #000080;"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 214px">&nbsp;</td>
                <td style="width: 263px">&nbsp;</td>
                <td style="width: 260px">&nbsp;</td>
                <td style="width: 304px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 214px">&nbsp;</td>
                <td style="width: 263px">&nbsp;</td>
                <td style="width: 260px">&nbsp;</td>
                <td style="width: 304px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</asp:Content>

