<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="services.aspx.vb" Inherits="cp_services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            color: #000000;
            font-size: x-large;
        }
        .style2
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        &nbsp;</p>
    <p>
        <span class="style1"><strong>الخدمات</strong></span><br />
    </p>
    <p>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Service_id" 
            DataSourceID="SqlDataSource2" DefaultMode="Insert" Width="233px">
            <EditItemTemplate>
                <table class="style2">
                    <tr>
                        <td>
                            معرف:</td>
                        <td>
                            <asp:Label ID="Service_idLabel1" runat="server" 
                                Text='<%# Eval("Service_id") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            الخدمة:</td>
                        <td>
                            <asp:TextBox ID="Service_nameTextBox" runat="server" 
                                Text='<%# Bind("Service_name") %>' />
                        </td>
                    </tr>
                </table>
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="تحديث" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="إلغاء" />
            </EditItemTemplate>
            <InsertItemTemplate>
                الخدمة:
                <asp:TextBox ID="Service_nameTextBox" runat="server" 
                    Text='<%# Bind("Service_name") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="إدخال" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="إلغاء" />
            </InsertItemTemplate>
            <ItemTemplate>
                Service_id:
                <asp:Label ID="Service_idLabel" runat="server" 
                    Text='<%# Eval("Service_id") %>' />
                <br />
                Service_name:
                <asp:Label ID="Service_nameLabel" runat="server" 
                    Text='<%# Bind("Service_name") %>' />
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
            DeleteCommand="DELETE FROM [tblServices] WHERE [Service_id] = @Service_id" 
            InsertCommand="INSERT INTO [tblServices] ([Service_name]) VALUES (@Service_name)" 
            SelectCommand="SELECT * FROM [tblServices] WHERE ([Service_id] = @Service_id)" 
            UpdateCommand="UPDATE [tblServices] SET [Service_name] = @Service_name WHERE [Service_id] = @Service_id">
            <DeleteParameters>
                <asp:Parameter Name="Service_id" Type="Int16" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Service_name" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="Service_id" 
                    PropertyName="SelectedValue" Type="Int16" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Service_name" Type="String" />
                <asp:Parameter Name="Service_id" Type="Int16" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            DataKeyNames="Service_id" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField SelectText="تحرير" ShowSelectButton="True" />
                <asp:BoundField DataField="Service_id" HeaderText="رقم الخدمة" 
                    InsertVisible="False" ReadOnly="True" SortExpression="Service_id" />
                <asp:BoundField DataField="Service_name" HeaderText="اسم الخدمة" 
                    SortExpression="Service_name" />
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
            DeleteCommand="DELETE FROM [tblServices] WHERE [Service_id] = @Service_id" 
            InsertCommand="INSERT INTO [tblServices] ([Service_name]) VALUES (@Service_name)" 
            SelectCommand="SELECT * FROM [tblServices]" 
            UpdateCommand="UPDATE [tblServices] SET [Service_name] = @Service_name WHERE [Service_id] = @Service_id">
            <DeleteParameters>
                <asp:Parameter Name="Service_id" Type="Int16" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Service_name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Service_name" Type="String" />
                <asp:Parameter Name="Service_id" Type="Int16" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

