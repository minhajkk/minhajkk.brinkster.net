<%@ Page Language="vb" AutoEventWireup="false" src="WebForm1.aspx.vb" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>WebForm1</title>
		<meta content="True" name="vs_snapToGrid">
		<meta content="False" name="vs_showGrid">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body bgColor="#000000" MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<FONT face="Tahoma">
				<asp:textbox id="txtName" style="Z-INDEX: 101; LEFT: 200px; POSITION: absolute; TOP: 48px" runat="server"
					Width="169" Height="26"></asp:textbox>
				<asp:radiobutton id="rdoFemale" style="Z-INDEX: 111; LEFT: 296px; POSITION: absolute; TOP: 176px"
					runat="server" Height="20" Width="97" Font-Size="Small" GroupName="Gender" ForeColor="Magenta"
					Text="Female"></asp:radiobutton>
				<asp:radiobutton id="rdoMale" style="Z-INDEX: 110; LEFT: 200px; POSITION: absolute; TOP: 176px" runat="server"
					Height="20" Width="97" Font-Size="Small" GroupName="Gender" ForeColor="Magenta" Text="Male" Checked="True"></asp:radiobutton><asp:label id="Label5" style="Z-INDEX: 109; LEFT: 32px; POSITION: absolute; TOP: 240px" runat="server"
					Width="120px" Height="32px" ForeColor="#8080FF" Font-Bold="True">Marital Status</asp:label><asp:label id="Label4" style="Z-INDEX: 106; LEFT: 32px; POSITION: absolute; TOP: 312px" runat="server"
					Width="80px" Height="32px" ForeColor="#8080FF" Font-Bold="True">Hobbies</asp:label><asp:label id="Label3" style="Z-INDEX: 105; LEFT: 32px; POSITION: absolute; TOP: 168px" runat="server"
					Width="80px" Height="32px" ForeColor="#8080FF" Font-Bold="True">Gender</asp:label><asp:label id="Label2" style="Z-INDEX: 104; LEFT: 32px; POSITION: absolute; TOP: 104px" runat="server"
					Width="80px" Height="32px" ForeColor="#8080FF" Font-Bold="True">Age</asp:label><asp:button id="btnSubmit" style="Z-INDEX: 102; LEFT: 264px; POSITION: absolute; TOP: 480px"
					runat="server" Width="88px" Height="32px" Text="Submit"></asp:button><asp:label id="Label1" style="Z-INDEX: 103; LEFT: 32px; POSITION: absolute; TOP: 48px" runat="server"
					Width="80px" Height="32px" ForeColor="#8080FF" Font-Bold="True">Name</asp:label><asp:checkboxlist id="cblHobbies" style="Z-INDEX: 107; LEFT: 200px; POSITION: absolute; TOP: 304px"
					runat="server" Width="352px" Height="144px" ForeColor="Magenta" RepeatColumns="2" Font-Size="Small"></asp:checkboxlist><asp:textbox id="txtAge" style="Z-INDEX: 108; LEFT: 200px; POSITION: absolute; TOP: 104px" runat="server"
					Width="169px" Height="26px" MaxLength="2"></asp:textbox>
				<asp:Panel id="pnlSum" style="Z-INDEX: 112; LEFT: 440px; POSITION: absolute; TOP: 24px" runat="server"
					Height="200px" Width="204px" ForeColor="Lime" BorderColor="#8080FF" BorderStyle="Outset">
					<P>
						<asp:Literal id="ltlSum" runat="server"></asp:Literal></P>
					<P></P>
					<P>&nbsp;</P>
					<P>&nbsp;</P>
					<P>&nbsp;</P>
					<P></P>
					<P>&nbsp;</P>
				</asp:Panel>
				<asp:DropDownList id="ddlStatus" style="Z-INDEX: 113; LEFT: 200px; POSITION: absolute; TOP: 240px"
					runat="server" Height="24px" Width="172px">
					<asp:ListItem Value="Married">Married</asp:ListItem>
					<asp:ListItem Value="Unmarried">Unmarried</asp:ListItem>
				</asp:DropDownList></FONT></form>
	</body>
</HTML>
