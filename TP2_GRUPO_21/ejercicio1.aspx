<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ejercicio1.aspx.cs" Inherits="TP2_GRUPO_21.ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 460px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Ingresar nombre del producto:
                        <asp:TextBox ID="txtbox1" runat="server"></asp:TextBox>
                    </td>
                    <td>Cantidad:
                        <asp:TextBox ID="txtbox2" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Ingresar nombre del producto:
                        <asp:TextBox ID="txtbox3" runat="server"></asp:TextBox>
                    </td>
                    <td>Cantidad:
                        <asp:TextBox ID="txtbox4" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
           &nbsp;</td>
                </tr>
            </table>
        </div>
        <p>
            <asp:Button ID="btnGenerarTabla" runat="server" OnClick="btnGenerarTabla_Click" Text="Generar Tabla" />
        </p>
        <asp:Literal ID="litTabla" runat="server"></asp:Literal>
    </form>
</body>
</html>