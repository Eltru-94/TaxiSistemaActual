<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Temporal.aspx.cs" Inherits="Temporal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ROL_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ROL_ID" HeaderText="ROL_ID" InsertVisible="False" ReadOnly="True" SortExpression="ROL_ID" />
                <asp:BoundField DataField="ROL_ROLES" HeaderText="ROL_" SortExpression="ROL_ROLES" />
                <asp:BoundField DataField="ROL_ESTADO" HeaderText="ROL_ESTADO" SortExpression="ROL_ESTADO" />
                <asp:CommandField />
                <asp:CommandField ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectoConnectionString %>" SelectCommand="INT_SELECT_ROLES" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
