<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="region.aspx.vb" Inherits="cp_region" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 102px;
        }
        .style3
        {
            color: #000000;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        &nbsp;</p>
    <p>
        <span class="style3">المناطق</span><br />
    </p>
    <p>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="region_id" 
            DataSourceID="SqlDataSource2" DefaultMode="Insert" Width="382px">
            <EditItemTemplate>
                <table class="style1">
                    <tr>
                        <td class="style2">
                            معرف:</td>
                        <td>
                            <asp:Label ID="region_idLabel1" runat="server" 
                                Text='<%# Eval("region_id") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            المنطقة:</td>
                        <td>
                            <asp:TextBox ID="region_nameTextBox" runat="server" 
                                Text='<%# Bind("region_name") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            مفتاح الاتصال:</td>
                        <td>
                            <asp:TextBox ID="tell_codeTextBox" runat="server" 
                                Text='<%# Bind("tell_code") %>' />
                        </td>
                    </tr>
                </table>
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="تحديث" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="إلغاء" />
            </EditItemTemplate>
            <InsertItemTemplate>
                <table class="style1">
                    <tr>
                        <td>
                            رقم المنطقة:</td>
                        <td>
                            <asp:TextBox ID="region_idTextBox" runat="server" 
                                Text='<%# Bind("region_id") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            اسم المنطقة:</td>
                        <td>
                            <asp:TextBox ID="region_nameTextBox" runat="server" 
                                Text='<%# Bind("region_name") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            مفتاح الاتصال:</td>
                        <td>
                            <asp:TextBox ID="tell_codeTextBox" runat="server" 
                                Text='<%# Bind("tell_code") %>' />
                        </td>
                    </tr>
                </table>
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="إدخال" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="إلغاء" />
            </InsertItemTemplate>
            <ItemTemplate>
                region_id:
                <asp:Label ID="region_idLabel" runat="server" Text='<%# Eval("region_id") %>' />
                <br />
                region_name:
                <asp:Label ID="region_nameLabel" runat="server" 
                    Text='<%# Bind("region_name") %>' />
                <br />
                tell_code:
                <asp:Label ID="tell_codeLabel" runat="server" Text='<%# Bind("tell_code") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                    CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:HCSConnectionString %>" 
            DeleteCommand="DELETE FROM [tblRregion] WHERE [region_id] = @region_id" 
            InsertCommand="INSERT INTO [tblRregion] ([region_name], [tell_code]) VALUES (@region_name, @tell_code)" 
            SelectCommand="SELECT * FROM [tblRregion]" 
            UpdateCommand="UPDATE [tblRregion] SET [region_name] = @region_name, [tell_code] = @tell_code WHERE [region_id] = @region_id">
            <DeleteParameters>
                <asp:Parameter Name="region_id" Type="Byte" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="region_name" Type="String" />
                <asp:Parameter Name="tell_code" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="region_name" Type="String" />
                <asp:Parameter Name="tell_code" Type="String" />
                <asp:Parameter Name="region_id" Type="Byte" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            DataKeyNames="region_id" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField SelectText="تحرير" ShowSelectButton="True" />
                <asp:BoundField DataField="region_id" HeaderText="رقم المنطقة" ReadOnly="True" 
                    SortExpression="region_id" />
                <asp:BoundField DataField="region_name" HeaderText="اسم المنطقة" 
                    SortExpression="region_name" />
                <asp:BoundField DataField="tell_code" HeaderText="مفتاح الاتصال" 
                    SortExpression="tell_code" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:HCSConnectionString %>" 
            DeleteCommand="DELETE FROM [tblRregion] WHERE [region_id] = @region_id" 
            InsertCommand="INSERT INTO [tblRregion] ([region_name], [tell_code]) VALUES (@region_name, @tell_code)" 
            SelectCommand="SELECT * FROM [tblRregion]" 
            UpdateCommand="UPDATE [tblRregion] SET [region_name] = @region_name, [tell_code] = @tell_code WHERE [region_id] = @region_id">
            <DeleteParameters>
                <asp:Parameter Name="region_id" Type="Byte" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="region_name" Type="String" />
                <asp:Parameter Name="tell_code" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="region_name" Type="String" />
                <asp:Parameter Name="tell_code" Type="String" />
                <asp:Parameter Name="region_id" Type="Byte" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

