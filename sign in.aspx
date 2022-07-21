<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign in.aspx.cs" Inherits="Eclerx.MinaksheequesNo1.sign_in" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <lable>
                            UserName
                        </lable>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtUserName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>
                            UserPassWord
                        </label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtUserPassword" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <lable>ConfirmPassWord</lable>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtConfirmPassWord" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="BtnlogIn" runat="server" Text="Button" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
