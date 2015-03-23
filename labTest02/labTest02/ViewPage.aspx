<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewPage.aspx.cs" Inherits="labTest02.ViewPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Sallery</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" align="center" runat="server" ForeColor="#333333" ShowFooter="True" GridLines="None" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" >
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" SortExpression="EmployeeID" />
                    <asp:BoundField DataField="EmployeeName" HeaderText="EmployeeName" FooterText="Total:" SortExpression="EmployeeName" />
                    <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                    <asp:TemplateField HeaderText=" Total sallery">
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# GetTotalSallery(Convert.ToDouble(Eval("BasicSallery")),Convert.ToDouble(Eval("convRate")),Convert.ToDouble(Eval("houseRent"))) %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:Label runat="server" ID="lebelforTotalAmount" Text='<%#GetTotal() %>'></asp:Label>
                        </FooterTemplate>
                       
                    </asp:TemplateField>  
                </Columns>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:labtest02_dbConnectionString %>" SelectCommand="SELECT [EmployeeID], [EmployeeName], [Designation],[BasicSallery],[convRate],[houseRent] FROM [EmployeeSallery]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
