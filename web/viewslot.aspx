<%@ Page Title="" Language="C#" MasterPageFile="~/LobbyMaster.master" AutoEventWireup="true"
    CodeFile="viewslot.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="margin-left: 320px">
        <table>
            <tr>
                <td>
                    SELECT SLOT NO.
                </td>
                <td>
                    :
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Height="29px" Width="190px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    SLOT NO.
                </td>
                <td>
                    :
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" ReadOnly="true" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red"
                        ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    UPLOAD IMAGE
                </td>
                <td>
                    :
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red"
                        ControlToValidate="FileUpload1" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="only images"
                        ControlToValidate="FileUpload1" ForeColor="Red" ValidationExpression="(.*png$)|(.*jpg$)|(.*jpeg$)">
                    </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="SUBMIT" onclick="Button1_Click" />
                </td>
            </tr>
        </table>
    </div>
    <br />
    <div style="margin-left: 400px">
        <asp:GridView ID="GridView1" OnRowCommand="GridView1_RowCommand" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="245px">
            <Columns>
                <asp:BoundField HeaderText="SLOT NO" DataField="Slot_no" />
                <%-- <asp:BoundField HeaderText="" DataField="" />--%>
                <asp:TemplateField HeaderText="Download Here">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkDownload4" runat="server" CausesValidation="False" CommandArgument='<%# Eval("slot_url") %>'
                            CommandName="Download" Text="SLOT_IMAGE" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </div>
</asp:Content>
