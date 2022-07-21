<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentDetails.aspx.cs" Inherits="Eclerx.MinaksheequesNo1.StudentDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
       table,tr,td{
padding:15px;
margin:20px;
width:20px;
height:20px;
       }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <label>StudentId</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtStudentId" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <lable>UserName</lable>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtUserName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RfvUserName" runat="server" ErrorMessage="UserName should not be empty"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <lable>
                            UserPasswords
                        </lable>
                    </td>
                    <td spellcheck="True" style="font-size: x-small">
                        <asp:TextBox ID="TxtUserPasswords" type="password" runat="server" MaxLength="8"></asp:TextBox>
                        <asp:RangeValidator ID="RngvUserPassword" runat="server" ErrorMessage="Range should be 8"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <lable>Confirm Password</lable>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtConfirmPassword" typr="password" MaxLength="8" runat="server"></asp:TextBox></td>
                    <asp:CompareValidator ID="CmpvConfirmPasswords" runat="server" ControlToValidate="ConfirmPassword" ControlToCompare="UserPassword" ErrorMessage="CompareValidator"></asp:CompareValidator>
                    </tr>
                <tr>
                    <td>
                        <label>Account Creation Date</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtAccountCreationDate" type="date" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Hobbies</label>
                    </td>
                    <td>
                        <asp:CheckBoxList ID="ChkHobbies" runat="server">
                            <asp:ListItem Value="0">Reading</asp:ListItem>
                            <asp:ListItem Value="1">Drawing</asp:ListItem>
                            <asp:ListItem Value="2">FootBall</asp:ListItem>
                            <asp:ListItem Value="3">Cricket</asp:ListItem>
                            <asp:ListItem Value="4">reading</asp:ListItem>
                        </asp:CheckBoxList>
                        <asp:CustomValidator ID="CustvHobbies" runat="server" ErrorMessage="one is selected"checked="1" ></asp:CustomValidator>
                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:Button ID="BtnAddStudent" runat="server" Text="Button" OnClick="BtnAddStudent_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="LbtnSignIn" runat="server" OnClick="LbtnSignIn_Click">LinkButton</asp:LinkButton></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
