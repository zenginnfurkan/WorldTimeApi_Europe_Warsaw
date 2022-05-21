<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WarsawTime.aspx.cs" Inherits="Zad_WorldTimeApi_Europe_Warsaw.WarsawTime" %>

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
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td></td>
                    <td class="auto-style2">
                        <h3><strong><em>
                        <asp:Label ID="lblTimeZone" runat="server" Text="Strefa czasowa"></asp:Label>
                            </em></strong></h3>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td class="auto-style2"></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td class="auto-style2">
                        <h2>
                        <asp:Label ID="lblDateTime" runat="server" Text="Godzina"></asp:Label>
                        </h2>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td class="auto-style2">&nbsp;</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" Text="Która godzina?" OnClick="getTime" />
                    </td>
                    <td></td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
