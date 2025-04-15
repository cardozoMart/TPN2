<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ejercicio1.aspx.cs" Inherits="TP2_GRUPO_21.ejercicio1" UnobtrusiveValidationMode="None"%>

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
            width: 327px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Ingresar nombre del producto:
                        <asp:TextBox ID="txtBoxProducto1" runat="server"></asp:TextBox>
                    </td>
                    <td>Cantidad:
                        <asp:TextBox ID="txtBoxCantidad1" runat="server" TextMode="Number"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server"
                            ControlToValidate="txtBoxCantidad1"
                            MinimumValue="0"
                            MaximumValue="1000000"
                            Type="Integer"
                            ErrorMessage="Ingrese valores positivos"
                            ForeColor="Red"
                            Display="Dynamic"
                        ></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Ingresar nombre del producto:
                        <asp:TextBox ID="txtBoxProducto2" runat="server"></asp:TextBox>
                    </td>
                    <td>Cantidad:
                        <asp:TextBox ID="txtBoxCantidad2" runat="server" TextMode="Number"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator2" runat="server"
                            ControlToValidate="txtBoxCantidad2"
                            MinimumValue="0"
                            MaximumValue="1000000"
                            Type="Integer"
                            ErrorMessage="Ingrese valores positivos"
                            ForeColor="Red"
                            Display="Dynamic"
                        ></asp:RangeValidator>
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