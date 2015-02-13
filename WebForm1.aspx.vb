Public Class WebForm1
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents btnSubmit As System.Web.UI.WebControls.Button
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents Label3 As System.Web.UI.WebControls.Label
    Protected WithEvents Label4 As System.Web.UI.WebControls.Label
    Protected WithEvents txtName As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtAge As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label5 As System.Web.UI.WebControls.Label
    Protected WithEvents cblHobbies As System.Web.UI.WebControls.CheckBoxList
    Protected WithEvents rdoMale As System.Web.UI.WebControls.RadioButton
    Protected WithEvents rdoFemale As System.Web.UI.WebControls.RadioButton
    Protected WithEvents pnlSum As System.Web.UI.WebControls.Panel
    Protected WithEvents ltlSum As System.Web.UI.WebControls.Literal
    Protected WithEvents ddlStatus As System.Web.UI.WebControls.DropDownList

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        If IsPostBack = False Then

            Dim str1() As String = {"Music", "Dancing", "Surfing", "Chatting", "Reading", "Sports"}
        cblHobbies.DataSource = str1
        cblHobbies.DataBind()

        End If


        
    End Sub

    Private Sub btnSubmit_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSubmit.Click

        If rdoMale.Checked Then
            ltlSum.Text = "Mr." & txtName.Text & "<br>"
            
        Else
            If ddlStatus.SelectedIndex = (1) Then
                ltlSum.Text = "Miss " & txtName.Text & "<br>"
            Else
                ltlSum.Text = "Mrs." & txtName.Text & "<br>"


            End If
        End If
        ltlSum.Text &= "You are " & txtAge.Text & " years old." & "<br>"


        Dim co As Integer
        Dim h As String
        Dim j As Integer
        For j = 0 To cblHobbies.Items.Count - 1
            If cblHobbies.Items(j).Selected = True Then
                co = co + 1
                If co = 1 Then
                    h = "Your hobby is "
                ElseIf co > 1 Then
                    h = "Your hobbies are "
                End If
            End If



        Next

        Dim i As Integer
        Dim c As Integer
        Dim s As String
        For i = 0 To cblHobbies.Items.Count - 1
            If cblHobbies.Items(i).Selected = True Then
                c = c + 1

                Select Case c
                    Case 1
                        s = cblHobbies.Items.Item(i).Value
                    Case 2
                        s &= " and " & cblHobbies.Items.Item(i).Value
                    Case Else
                        s = cblHobbies.Items.Item(i).Value & ", " & s

                End Select

            End If

        Next


        ltlSum.Text &= h & s & "."
       
    End Sub
End Class
