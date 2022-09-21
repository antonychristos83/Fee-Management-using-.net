<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Fee_Management.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified" style="background-image: linear-gradient(344deg, rgb(197, 160, 165) 0%, rgb(197, 160, 165) 20%,rgb(206, 134, 161) 20%, rgb(206, 134, 161) 38%,rgb(215, 108, 156) 38%, rgb(215, 108, 156) 68%,rgb(225, 82, 152) 68%, rgb(225, 82, 152) 78%,rgb(234, 55, 148) 78%, rgb(234, 55, 148) 80%,rgb(243, 29, 143) 80%, rgb(243, 29, 143) 96%,rgb(252, 3, 139) 96%, rgb(252, 3, 139) 100%),linear-gradient(208deg, rgb(197, 160, 165) 0%, rgb(197, 160, 165) 20%,rgb(206, 134, 161) 20%, rgb(206, 134, 161) 38%,rgb(215, 108, 156) 38%, rgb(215, 108, 156) 68%,rgb(225, 82, 152) 68%, rgb(225, 82, 152) 78%,rgb(234, 55, 148) 78%, rgb(234, 55, 148) 80%,rgb(243, 29, 143) 80%, rgb(243, 29, 143) 96%,rgb(252, 3, 139) 96%, rgb(252, 3, 139) 100%),linear-gradient(189deg, rgb(197, 160, 165) 0%, rgb(197, 160, 165) 20%,rgb(206, 134, 161) 20%, rgb(206, 134, 161) 38%,rgb(215, 108, 156) 38%, rgb(215, 108, 156) 68%,rgb(225, 82, 152) 68%, rgb(225, 82, 152) 78%,rgb(234, 55, 148) 78%, rgb(234, 55, 148) 80%,rgb(243, 29, 143) 80%, rgb(243, 29, 143) 96%,rgb(252, 3, 139) 96%, rgb(252, 3, 139) 100%),linear-gradient(230deg, rgb(197, 160, 165) 0%, rgb(197, 160, 165) 20%,rgb(206, 134, 161) 20%, rgb(206, 134, 161) 38%,rgb(215, 108, 156) 38%, rgb(215, 108, 156) 68%,rgb(225, 82, 152) 68%, rgb(225, 82, 152) 78%,rgb(234, 55, 148) 78%, rgb(234, 55, 148) 80%,rgb(243, 29, 143) 80%, rgb(243, 29, 143) 96%,rgb(252, 3, 139) 96%, rgb(252, 3, 139) 100%),linear-gradient(69deg, rgb(197, 160, 165) 0%, rgb(197, 160, 165) 20%,rgb(206, 134, 161) 20%, rgb(206, 134, 161) 38%,rgb(215, 108, 156) 38%, rgb(215, 108, 156) 68%,rgb(225, 82, 152) 68%, rgb(225, 82, 152) 78%,rgb(234, 55, 148) 78%, rgb(234, 55, 148) 80%,rgb(243, 29, 143) 80%, rgb(243, 29, 143) 96%,rgb(252, 3, 139) 96%, rgb(252, 3, 139) 100%),linear-gradient(90deg, rgb(77, 249, 52),rgb(153, 163, 31)); background-blend-mode:overlay,overlay,overlay,overlay,overlay,normal;">
        <tr>
            <td>&nbsp;</td>
            <td style="width: 196px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr class="text-info">
            <td style="height: 20px"></td>
            <td style="height: 20px; width: 196px"></td>
            <td colspan="2" style="height: 20px">
                <asp:Label ID="lblTitle" runat="server" style="font-family:'Lucida Handwriting';font-size:xx-large;font-style:italic" Text="LOGIN"></asp:Label>
            </td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="height: 20px"></td>
            <td style="width: 196px; height: 20px"></td>
            <td style="height: 20px">&nbsp;</td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="height: 21px"></td>
            <td style="width: 196px; height: 21px">
                <asp:Label ID="lblUname" runat="server"  style="font-family:Consolas" Text="User Name"></asp:Label>
            </td>
            <td style="height: 21px">
                <asp:TextBox ID="txtUname" class="form-control"  runat="server"></asp:TextBox>
            </td>
            <td style="height: 21px"></td>
            <td style="height: 21px"></td>
            <td style="height: 21px"></td>
        </tr>
        <tr>
            <td style="height: 20px"></td>
            <td style="width: 196px; height: 20px">&nbsp;</td>
            <td style="height: 20px">&nbsp;</td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 196px">
                <asp:Label ID="lblPass" runat="server"  style="font-family:Consolas" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPass" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 196px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 196px">&nbsp;</td>
            <td>
                <asp:Button ID="btnSub" runat="server" CssClass="btn-success" OnClick="btnSub_Click" Text="Submit" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 196px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 196px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 18px"></td>
            <td style="width: 196px; height: 18px">
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
            <td style="height: 18px"></td>
            <td style="height: 18px"></td>
            <td style="height: 18px"></td>
            <td style="height: 18px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 196px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 196px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 196px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br /><br />

</asp:Content>
