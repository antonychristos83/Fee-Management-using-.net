<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentInfo.aspx.cs" Inherits="Fee_Management.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified" style="background-image: linear-gradient(67.5deg, rgb(250,117,188) 0%, rgb(250,117,188) 46%,rgb(255,128,128) 46%, rgb(255,128,128) 49%,rgb(168,105,105) 49%, rgb(168,105,105) 56%,rgb(255,128,128) 56%, rgb(255,128,128) 61%,rgb(255,190,190) 61%, rgb(255,190,190) 75%,rgb(129, 129, 129) 75%, rgb(129, 129, 129) 84%,rgb(140,188,182) 84%, rgb(140,188,182) 100%),linear-gradient(22.5deg, rgb(250,117,188) 0%, rgb(250,117,188) 46%,rgb(255,128,128) 46%, rgb(255,128,128) 49%,rgb(168,105,105) 49%, rgb(168,105,105) 56%,rgb(255,128,128) 56%, rgb(255,128,128) 61%,rgb(255,190,190) 61%, rgb(255,190,190) 75%,rgb(129, 129, 129) 75%, rgb(129, 129, 129) 84%,rgb(140,188,182) 84%, rgb(140,188,182) 100%),linear-gradient(112.5deg, rgb(250,117,188) 0%, rgb(250,117,188) 46%,rgb(255,128,128) 46%, rgb(255,128,128) 49%,rgb(168,105,105) 49%, rgb(168,105,105) 56%,rgb(255,128,128) 56%, rgb(255,128,128) 61%,rgb(255,190,190) 61%, rgb(255,190,190) 75%,rgb(129, 129, 129) 75%, rgb(129, 129, 129) 84%,rgb(140,188,182) 84%, rgb(140,188,182) 100%),linear-gradient(450deg, rgb(255,192,192),rgb(195, 195, 195)); background-blend-mode:overlay,overlay,overlay,normal;">
        <tr>
            <td class="modal-sm" style="width: 231px">&nbsp;</td>
            <td style="width: 284px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr class="text-success">
            <td colspan="2" style="height: 20px">
                <asp:Label ID="lblTitle" runat="server" style="font-family:'Lucida Handwriting';font-size:x-large;font-style:italic" Text="STUDENT DETAILS"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:Label ID="btnlogout" style="font-family:'Lucida Handwriting';font-size:x-large;font-style:italic" runat="server"></asp:Label>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="height: 20px; width: 231px">
                &nbsp;</td>
            <td style="height: 20px; width: 284px;">
                &nbsp;</td>
            <td rowspan="8">
                <asp:GridView ID="dgViewStudents" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="StudentID" DataSourceID="SqlDataSource1" Height="245px" Width="616px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="StudentID" HeaderText="StudentID" InsertVisible="False" ReadOnly="True" SortExpression="StudentID" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Course" HeaderText="Course" SortExpression="Course" />
                        <asp:BoundField DataField="Payment_date" HeaderText="Payment_date" SortExpression="Payment_date" DataFormatString="{0:MM/dd/yyyy}"/>
                        <asp:BoundField DataField="Payment_status" HeaderText="Payment_status" SortExpression="Payment_status" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbcon %>" SelectCommand="SELECT * FROM [Students]"></asp:SqlDataSource>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 231px">
                <asp:Label ID="lblName" runat="server" style="font-family:Consolas" Text="Name"></asp:Label>
            </td>
            <td style="width: 284px">
                <asp:TextBox ID="txtName"  class="form-control"  runat="server" Width="160px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 231px; height: 20px">
                <asp:Label ID="lblCourse" style="font-family:Consolas"  runat="server" Text="Course"></asp:Label>
            </td>
            <td style="height: 20px; width: 284px;">
                <asp:DropDownList ID="ddlCourse"  class="form-control"  runat="server" Width="187px">
                    <asp:ListItem Value="Keyboard or Guitar">Keyboard or Guitar</asp:ListItem>
                    <asp:ListItem>Keyboard </asp:ListItem>
                    <asp:ListItem>Guitar</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="height: 22px; width: 231px">
                <asp:Label ID="lblPayment" runat="server" style="font-family:Consolas"  Text="Payment Date"></asp:Label>
            </td>
            <td style="height: 22px; width: 284px;">
                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Width="161px"></asp:Calendar>
                <asp:TextBox ID="txtDOP" runat="server"  class="form-control"  Width="158px" style="margin-top: 11" ></asp:TextBox>
            </td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 231px; height: 30px;">
                <asp:Label ID="lblPaymentStatus" runat="server" style="font-family:Consolas"  Text="Payment Status"></asp:Label>
            </td>
            <td style="width: 284px; height: 30px;">
                <asp:DropDownList ID="ddStatus" class="form-control"  runat="server" Width="184px">
                    <asp:ListItem >Payment done or not</asp:ListItem>
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 30px"></td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 231px; ">
                &nbsp;</td>
            <td style="width: 284px">
                <asp:Button ID="btnAdd" runat="server" CssClass="btn-success fs-1" Text="+" OnClick="btnAdd_Click" Width="58px" BorderStyle="Outset" Font-Bold="True" style="margin-bottom: 16" />
                <asp:Button ID="btnUpdate" runat="server" CssClass="btn-info" Text="Update" OnClick="btnUpdate_Click" Width="63px" />
                <asp:Button ID="btnDelete" runat="server" CssClass="btn-danger" Text="X" OnClick="btnDelete_Click" Width="59px" />
            </td>
            <td></td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 231px">
                <asp:Label ID="lblSID" runat="server" Visible="False"></asp:Label>
            </td>
            <td style="width: 284px">
                <asp:Button ID="btnCancel" runat="server" CssClass="btn-warning" Text="Cancel" Width="179px" OnClick="Button4_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 231px">&nbsp;</td>
            <td style="width: 284px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 231px">&nbsp;</td>
            <td style="width: 284px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" CssClass="btn-danger" OnClick="Button1_Click" Text="LOGOUT" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px;" colspan="2">
                &nbsp;</td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
    </table>
                <asp:Label ID="txtlbl" style="font-family:Consolas"  runat="server"></asp:Label>
    <br /><br />

</asp:Content>
