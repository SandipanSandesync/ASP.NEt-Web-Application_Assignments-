<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assignment2gridview.aspx.cs" Inherits="WebApplicationAssignment2.Assignment2gridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="352px" Width="398px">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
            <br />
            Enter your Employee Id :
            <asp:TextBox ID="txteid" runat="server"></asp:TextBox>
            <br />
            <br />
            Enter Your Name :
            <asp:TextBox ID="txtename" runat="server"></asp:TextBox>
            <br />
            <br />
            Enter Your Salary :<asp:TextBox ID="txtesal" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnInsertQuotes" runat="server" OnClick="btnInsertQuotes_Click" Text="InsertUsingQuotes" />
&nbsp;&nbsp;
            <asp:Button ID="btnInsertParams" runat="server" OnClick="btnInsertParams_Click" Text="InsertUsingParams" Width="202px" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnInsertSp" runat="server" OnClick="Button3_Click1" Text="InsertUsingSp" />
            <br />
            <asp:Button ID="btnUpdateQuotes" runat="server" OnClick="btnUpdateQuotes_Click" Text="UpdateUsingQuotes" />
&nbsp;
            <asp:Button ID="btnUpdateParams" runat="server" OnClick="btnUpdateParams_Click" Text="UpdateUsingParams" />
&nbsp;
            <asp:Button ID="btnUpdateSp" runat="server" OnClick="btnUpdateSp_Click" Text="UpdateUsingSp" />
            <br />
            <asp:Button ID="btnDeleteQuotes" runat="server" OnClick="btnDeleteQuotes_Click" Text="DeleteUsingQuotes" />
&nbsp;
            <asp:Button ID="btnDeleteParams" runat="server" OnClick="btnDeleteParams_Click" Text="DeleteUsingParams" />
&nbsp;<asp:Button ID="btnDeleteSp" runat="server" OnClick="btnDeleteSp_Click" Text="DeleteUsingSp" />
        </div>
    </form>
</body>
</html>
