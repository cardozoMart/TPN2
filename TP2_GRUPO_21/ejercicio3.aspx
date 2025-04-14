<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ejercicio3.aspx.cs" Inherits="TP2_GRUPO_21.ejercicio3" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ejercicio 3</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:LinkButton ID="btnRojo" runat="server" OnClick="btnRojo_Click">Rojo</asp:LinkButton><br />

            <asp:Label ID="lblTexto" runat="server" Text="Texto coloreado"></asp:Label>
        </div>
    </form>
</body>
</html>
