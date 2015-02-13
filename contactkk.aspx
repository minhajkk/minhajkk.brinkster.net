<%@ Page language="c#" src="contactkk.aspx.cs" AutoEventWireup="false" Inherits="contacts.site.contactkk" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Objective of this Portal is to provide on line platform for Kaimkhani Rajput 
			community where they can share their knowledge, joys and sorrows.</title>
		<META HTTP-EQUIV="content-Type" CONTENT="text/html; charset=iso-8859-1">
		<META NAME="DESCRIPTION" CONTENT="Visit Kaim Khani Portal">
		<META NAME="KEYWORDS" CONTENT="Minhaj,,Minhaj kk,kaim khani, kaimkhani, Kaim Khani, KaimKhani, Qaim Khani, qaim khani,QaimKhani,qaimkhani,Qaim Khani Rajput,Qaim khani rajpoot, Online Kaim Khani, Kaim khani Rajput, Rajput, Rajpoot">
		<META NAME="robots" CONTENT="index, follow">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<tabe>
			<tr>
				<td>
					<form id="Form1" method="post" runat="server">
						<table align='center' cellpadding='0' cellspacing='0' border='0' width='100%'>
							<tr width='100%' bgcolor='#3399ff'>
								<td align='center' width='100%'><font size='2' color='#ffffff' face='verdana'> Welcome 
										to the online Kaim Khani Online Portal</font>
								<td></td>
								<TD style="HEIGHT: 96px" align="center">
									<br>
									<br>
									<table align='center' width='95%' border='0' cellpadding='0' cellspacing='0' runat="server" id="tbl">
										<TR>
											<TD style="HEIGHT: 35px" vAlign="top"><asp:label id="nameLbl" runat="server" Text="Name :"></asp:label></TD>
											<TD style="HEIGHT: 35px" vAlign="top"><asp:textbox id="nameTxt" style="BORDER-RIGHT: #0099cc 1px solid; BORDER-TOP: #0099cc 1px solid; FONT-SIZE: 8pt; BORDER-LEFT: #0099cc 1px solid; BORDER-BOTTOM: #0099cc 1px solid; FONT-FAMILY: verdana; BACKGROUND-COLOR: #ffffff"
													runat="server" Height="18"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" ErrorMessage="* Required" ControlToValidate="nameTxt"></asp:requiredfieldvalidator></TD>
										</TR>
										<TR>
											<TD style="HEIGHT: 35px" vAlign="top"><asp:label id="emailLbl" runat="server" Text="Email :"></asp:label></TD>
											<TD style="HEIGHT: 35px" vAlign="top"><asp:textbox id="emailTxt" style="BORDER-RIGHT: #0099cc 1px solid; BORDER-TOP: #0099cc 1px solid; FONT-SIZE: 8pt; BORDER-LEFT: #0099cc 1px solid; BORDER-BOTTOM: #0099cc 1px solid; FONT-FAMILY: verdana; BACKGROUND-COLOR: #ffffff"
													runat="server" Height="18"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="emailTxt"></asp:requiredfieldvalidator><asp:regularexpressionvalidator id="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter a valid email address."
													ControlToValidate="emailTxt" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:regularexpressionvalidator></TD>
										</TR>
										<TR>
											<TD style="HEIGHT: 57px" vAlign="top"><asp:label id="detailLbl" runat="server" Text="Inquiry Details :"></asp:label></TD>
											<TD style="HEIGHT: 20px" vAlign="top" rowSpan="2"><asp:textbox id="detailTxt" style="BORDER-RIGHT: #0099cc 1px solid; BORDER-TOP: #0099cc 1px solid; FONT-SIZE: 8pt; BORDER-LEFT: #0099cc 1px solid; BORDER-BOTTOM: #0099cc 1px solid; FONT-FAMILY: verdana; BACKGROUND-COLOR: #ffffff"
													runat="server" Width="200px" TextMode="MultiLine" Height="86px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator3" runat="server" ErrorMessage=" * required" ControlToValidate="detailTxt"></asp:requiredfieldvalidator>&nbsp;
											</TD>
										</TR>
										<TR>
											<TD style="HEIGHT: 5px"></TD>
										</TR>
										<TR>
											<TD style="HEIGHT: 2px"></TD>
											<TD style="HEIGHT: 2px"><asp:button id="sendBtn" style='FONT-SIZE: 8pt;CURSOR: hand;COLOR: #ffffff;FONT-FAMILY: verdana;BACKGROUND-COLOR: #0099cc'
													runat="server" Text="Send" Enabled="true"></asp:button></TD>
										</TR>
										<TR>
											<TD></TD>
											<TD></TD>
										</TR>
									</table>
									<asp:label id="acknowledgementLbl" runat="server" ForeColor="Black" Font-Size="Small" Font-Names="Arial"
										Font-Bold="True" BackColor="Khaki"></asp:label></TD>
							</tr>
							<TR>
								<TD align="center">
								</TD>
							</TR>
						</table>
					</form>
				</td>
			</tr>
			<tr>
				<TD align="center">
				<br />
				<br />
<p align="center">
	<font face="Verdana"><span style="FONT-SIZE: 8.5pt">Site managed by Muhammad Minhaj Mehmood <br />Copyright 2005-<%= DateTime.Now.Year %> All rights reserved.<br />Help Line : +92 (333) 2715467 <a href="http://minhajkk.brinkster.net/">Home</a> </span></font>
</p>

				</TD>
			</tr>
		</tabe>
	</body>
</HTML>