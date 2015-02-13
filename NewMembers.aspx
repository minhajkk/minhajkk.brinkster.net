<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewMembers.aspx.cs" Inherits="NewMembers" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>:.::Add New Members to Directory.</title>
    <style>
            a:hover
            {
                COLOR: #000000;
                BACKGROUND-COLOR: blue;
                TEXT-DECORATION: underline
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="MemberID"
            DataSourceID="AccessDataSource1" DefaultMode="Insert" Height="218px" Width="100%" CellPadding="3" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" Font-Italic="False" OnItemCommand="DetailsView1_ItemCommand" OnItemInserted="DetailsView1_ItemInserted">
            <Fields>
                <asp:BoundField DataField="MemberID" HeaderText="MemberID" InsertVisible="False"
                    ReadOnly="True" SortExpression="MemberID" />
                <asp:TemplateField HeaderText="Name" SortExpression="Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Name") %>' CausesValidation="True"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2"
                            ErrorMessage="*Name cannot be empty."></asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email" SortExpression="Email">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Email") %>' CausesValidation="True"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Email cannot be empty."
                            SetFocusOnError="True"></asp:RequiredFieldValidator><asp:RegularExpressionValidator
                                ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1"
                                EnableTheming="True" ErrorMessage="*Please enter a valid User Email." SetFocusOnError="True"
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Mobile" SortExpression="Mobile">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Mobile") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" CausesValidation="True" Text='<%# Bind("Mobile") %>'></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator19" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Required"
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Mobile") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Address/Location" SortExpression="Address">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" CausesValidation="True" Text='<%# Bind("Address") %>'></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox5" ErrorMessage="*Required"
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="BloodGroup" SortExpression="BloodGroup">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("BloodGroup") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("BloodGroup") %>' CausesValidation="True"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator111" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Please give us your blood group info."
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("BloodGroup") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="Gainsboro" />
        </asp:DetailsView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="db/Membsers_db.mdb"
            DeleteCommand="DELETE FROM [Members] WHERE [MemberID] = ?" InsertCommand="INSERT INTO [Members] ([Email], [Mobile], [Address], [BloodGroup], [Name]) VALUES (?, ?, ?, ?, ?)"
            SelectCommand="SELECT [Email], [Mobile], [Address], [BloodGroup], [Name], [MemberID] FROM [Members]"
            UpdateCommand="UPDATE [Members] SET [Email] = ?, [Mobile] = ?, [Address] = ?, [BloodGroup] = ?, [Name] = ? WHERE [MemberID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="MemberID" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Mobile" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="BloodGroup" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="MemberID" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Mobile" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="BloodGroup" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
            </InsertParameters>
        </asp:AccessDataSource>
    </div>
    </form>
    <center>
				<br />
				<br />
<p align="center">
	
</p>

				</center>
</body>
</html>