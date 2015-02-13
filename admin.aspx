<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="_admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <a href="/Members.aspx">[Members]</a>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False"
            BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px"
            CellPadding="3" DataKeyNames="MemberID" DataSourceID="AccessDataSource1" GridLines="Vertical"
            Height="100%" Width="100%">
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <Fields>
                <asp:BoundField DataField="MemberID" HeaderText="MemberID" InsertVisible="False"
                    ReadOnly="True" SortExpression="MemberID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="BloodGroup" HeaderText="BloodGroup" SortExpression="BloodGroup" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:BoundField DataField="CreateDate" HeaderText="CreateDate" SortExpression="CreateDate" />
                <asp:BoundField DataField="ModifyDate" HeaderText="ModifyDate" SortExpression="ModifyDate" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="#DCDCDC" />
        </asp:DetailsView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="db/Membsers_db.mdb"
            DeleteCommand="DELETE FROM [Members] WHERE [MemberID] = ?" InsertCommand="INSERT INTO [Members] ([Name], [Email], [Mobile], [Address], [BloodGroup], [Status], [CreateDate], [ModifyDate]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)"
            SelectCommand="SELECT [MemberID], [Name], [Email], [Mobile], [Address], [BloodGroup], [Status], [CreateDate], [ModifyDate] FROM [Members]"
            UpdateCommand="UPDATE [Members] SET [Name] = ?, [Email] = ?, [Mobile] = ?, [Address] = ?, [BloodGroup] = ?, [Status] = ?, [CreateDate] = ?, [ModifyDate] = ? WHERE [MemberID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="MemberID" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Mobile" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="BloodGroup" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="CreateDate" Type="String" />
                <asp:Parameter Name="ModifyDate" Type="String" />
                <asp:Parameter Name="MemberID" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Mobile" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="BloodGroup" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="CreateDate" Type="String" />
                <asp:Parameter Name="ModifyDate" Type="String" />
            </InsertParameters>
        </asp:AccessDataSource>
    
    </div>
    </form>
</body>
</html>