<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormCricketAndTennisDetails.aspx.cs" Inherits="WebAppAssignment2cricketAndTennis.FormCricketAndTennisDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
            width: 460px;
        }
        .auto-style4 {
            width: 460px;
        }
    </style>
</head>
<body>
    <p>
        <br />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <form id="form1" runat="server">
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" GroupName="a" OnCheckedChanged="RadioButton1_CheckedChanged1" Text="CricketDetails" />
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style2">
                    <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" GroupName="a" OnCheckedChanged="RadioButton2_CheckedChanged1" Text="Tennis details" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Panel ID="Panel1" runat="server">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="MSDhoni.html">MSDhoni</asp:HyperLink>
                        <br />
                        <br />
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="SachinTendulkar.html">Sachin Tendulkar</asp:HyperLink>
                        <br />
                        <br />
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="Ganguly.html">Sourav Ganguly</asp:HyperLink>
                    </asp:Panel>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:Panel ID="Panel3" runat="server">
                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="Roger.html">Roger Federer</asp:HyperLink>
                        <br />
                        <br />
                        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="Nadal.html">Rafael Nadal</asp:HyperLink>
                        <br />
                        <br />
                        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="Novak.html">Novak Djokovic</asp:HyperLink>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Panel ID="Panel2" runat="server">
                        <br />
                    </asp:Panel>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
