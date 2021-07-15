<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="visit_type.aspx.vb" Inherits="cp_visit_type" %>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="visit_type_id" 
            DataSourceID="SqlDataSource2" DefaultMode="Insert" Width="352px">
            <EditItemTemplate>
                <table class="style1">
                    <tr>
                        <td>
                            معرف:</td>
                        <td>
                            <asp:Label ID="visit_type_idLabel1" runat="server" 
                                Text='<%# Eval("visit_type_id") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            نوع الزيارة:</td>
                        <td>
                            <asp:TextBox ID="visit_type_nameTextBox" runat="server" 
                                Text='<%# Bind("visit_type_name") %>' />
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
                        <td class="style2">
                            رقم نوع الزيارة:</td>
                        <td>
                            <asp:TextBox ID="visit_type_idTextBox" runat="server" 
                                Text='<%# Bind("visit_type_id") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            اسم نوع الزيارة:</td>
                        <td>
                            <asp:TextBox ID="visit_type_nameTextBox" runat="server" 
                                Text='<%# Bind("visit_type_name") %>' />
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
                visit_type_id:
                <asp:Label ID="visit_type_idLabel" runat="server" 
                    Text='<%# Eval("visit_type_id") %>' />
                <br />
                visit_type_name:
                <asp:Label ID="visit_type_nameLabel" runat="server" 
                    Text='<%# Bind("visit_type_name") %>' />
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
            DeleteCommand="DELETE FROM [tblVisitType] WHERE [visit_type_id] = @visit_type_id" 
            InsertCommand="INSERT INTO [tblVisitType] ([visit_type_name]) VALUES (@visit_type_name)" 
            SelectCommand="SELECT * FROM [tblVisitType] WHERE ([visit_type_id] = @visit_type_id)" 
            
            UpdateCommand="UPDATE [tblVisitType] SET [visit_type_name] = @visit_type_name WHERE [visit_type_id] = @visit_type_id">
            <DeleteParameters>
                <asp:Parameter Name="visit_type_id" Type="Byte" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="visit_type_name" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="visit_type_id" 
                    PropertyName="SelectedValue" Type="Byte" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="visit_type_name" Type="String" />
                <asp:Parameter Name="visit_type_id" Type="Byte" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            DataKeyNames="visit_type_id" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField SelectText="تحرير" ShowSelectButton="True" />
                <asp:BoundField DataField="visit_type_id" HeaderText="رقم نوع الزيارة" 
                    ReadOnly="True" SortExpression="visit_type_id" />
                <asp:BoundField DataField="visit_type_name" HeaderText="نوع الزيارة" 
                    SortExpression="visit_type_name" />
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
            DeleteCommand="DELETE FROM [tblVisitType] WHERE [visit_type_id] = @visit_type_id" 
            InsertCommand="INSERT INTO [tblVisitType] ([visit_type_name]) VALUES (@visit_type_name)" 
            SelectCommand="SELECT * FROM [tblVisitType]" 
            UpdateCommand="UPDATE [tblVisitType] SET [visit_type_name] = @visit_type_name WHERE [visit_type_id] = @visit_type_id">
            <DeleteParameters>
                <asp:Parameter Name="visit_type_id" Type="Byte" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="visit_type_name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="visit_type_name" Type="String" />
                <asp:Parameter Name="visit_type_id" Type="Byte" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

