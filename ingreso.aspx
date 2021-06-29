<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ingreso.aspx.cs" Inherits="ingreso" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

    <style>
        .boton
{
  padding:10px;
  width:250px;
  margin-top:10px;
  border-style:none;
  border-bottom-style:none;
  border-color:rgb(244, 102, 27);
  font-family: 'Montserrat', sans-serif;
  font-size:15px;
  color:rgb(244, 102, 27);
  background-color:rgb(255, 203, 96);
  opacity:inherit;
}

        .auto-style1 {
            width: 68px;
        }
        .auto-style2 {
            padding: 10px;
            margin-top: 10px;
            border-style: none;
            border-color: rgb(244, 102, 27);
            font-family: 'Montserrat', sans-serif;
            font-size: 15px;
            color: rgb(244, 102, 27);
            background-color: rgb(255, 203, 96);
            opacity: inherit;
        }
        .auto-style3 {
            width: 205px;
        }
        .auto-style4 {
            width: 250px;
        }
        .auto-style5 {
            width: 249px;
        }

    </style>
    <form id="form1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="5">

         <li  style="text-align: center; font-family: 'Times New Roman', Times, serif; font-weight: bold; font-size: xx-large;">
           
             INGRESO</li>

            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Button CssClass="auto-style2" ID="Btn_Ingreso_usuario" runat="server" Text="USUARIO" OnClick="Btn_Ingreso_usuario_Click" Width="111px" />
            </td>
            <td class="auto-style3">
                <asp:Button CssClass="auto-style2" ID="Btn_Ingreso_propietario" runat="server" Text="PROPIETARIO" Width="210px" OnClick="Btn_Ingreso_propietario_Click" />
            </td>
            <td class="auto-style4"> 
                <asp:Button CssClass="boton" ID="Btn_Ingreso_chofer" runat="server" Text="CHOFER" OnClick="Btn_Ingreso_chofer_Click" />
            </td>
            <td class="auto-style5">
                <asp:Button CssClass="boton" ID="Btn_Ingreso_taxi" runat="server" Text="TAXI" />
            </td>
            <td> 
                <asp:Button CssClass="boton" ID="Btn_Ingreso_asiganar_fun" runat="server" Text="ASIGNAR FUNCIONALIDAD" />

            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style4"> 
            </td>
            <td class="auto-style5">
                &nbsp;</td>
            <td> 
                &nbsp;</td>
        </tr>
    </table>
    </form>
</asp:Content>

