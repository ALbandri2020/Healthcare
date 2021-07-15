<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="city.aspx.vb" Inherits="cp_city" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 124px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
    <br />
</p>
<p>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="City_id" 
        DataSourceID="SqlDataSource2" DefaultMode="Insert">
        <EditItemTemplate>
            City_id:
            <asp:Label ID="City_idLabel1" runat="server" Text='<%# Eval("City_id") %>' />
            <br />
            City_name:
            <asp:TextBox ID="City_nameTextBox" runat="server" 
                Text='<%# Bind("City_name") %>' />
            <br />
            region_id:
            <asp:TextBox ID="region_idTextBox" runat="server" 
                Text='<%# Bind("region_id") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table class="style1">
                <tr>
                    <td class="style2">
                        معرف المدينة:</td>
                    <td>
                        <asp:TextBox ID="City_idTextBox" runat="server" Text='<%# Bind("City_id") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        اسم المدينة:</td>
                    <td>
                        <asp:TextBox ID="City_nameTextBox" runat="server" 
                            Text='<%# Bind("City_name") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        المنطقة:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            DataSourceID="SqlDataSource1" DataTextField="region_name" 
                            DataValueField="region_id" SelectedValue='<%# Bind("region_id") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:HCSConnectionString %>" 
                            SelectCommand="SELECT [region_id], [region_name] FROM [tblRregion]">
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="إدخال" />
&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" 
                CommandName="Cancel" Text="إلغاء" />
        </InsertItemTemplate>
        <ItemTemplate>
            City_id:
            <asp:Label ID="City_idLabel" runat="server" Text='<%# Eval("City_id") %>' />
            <br />
            City_name:
            <asp:Label ID="City_nameLabel" runat="server" Text='<%# Bind("City_name") %>' />
            <br />
            region_id:
            <asp:Label ID="region_idLabel" runat="server" Text='<%# Bind("region_id") %>' />
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
        DeleteCommand="DELETE FROM [tblCity] WHERE [City_id] = @City_id" 
        InsertCommand="INSERT INTO [tblCity] ([City_name], [region_id]) VALUES (@City_name, @region_id)" 
        SelectCommand="SELECT * FROM [tblCity] WHERE ([City_id] = @City_id)" 
        
        UpdateCommand="UPDATE [tblCity] SET [City_name] = @City_name, [region_id] = @region_id WHERE [City_id] = @City_id">
        <DeleteParameters>
            <asp:Parameter Name="City_id" Type="Byte" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="City_name" Type="String" />
            <asp:Parameter Name="region_id" Type="Byte" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="City_id" 
                PropertyName="SelectedValue" Type="Byte" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="City_name" Type="String" />
            <asp:Parameter Name="region_id" Type="Byte" />
            <asp:Parameter Name="City_id" Type="Byte" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="City_id" DataSourceID="SqlDataSource1" ForeColor="#333333" 
        GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="City_id" HeaderText="معرف المدينة" ReadOnly="True" 
                SortExpression="City_id" />
            <asp:BoundField DataField="City_name" HeaderText="اسم المدينة" 
                SortExpression="City_name" />
            <asp:BoundField DataField="region_id" HeaderText="المنطقة" 
                SortExpression="region_id" />
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
        DeleteCommand="DELETE FROM [tblCity] WHERE [City_id] = @City_id" 
        InsertCommand="INSERT INTO [tblCity] ([City_name], [region_id]) VALUES (@City_name, @region_id)" 
        SelectCommand="SELECT * FROM [tblCity]" 
        UpdateCommand="UPDATE [tblCity] SET [City_name] = @City_name, [region_id] = @region_id WHERE [City_id] = @City_id">
        <DeleteParameters>
            <asp:Parameter Name="City_id" Type="Byte" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="City_name" Type="String" />
            <asp:Parameter Name="region_id" Type="Byte" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="City_name" Type="String" />
            <asp:Parameter Name="region_id" Type="Byte" />
            <asp:Parameter Name="City_id" Type="Byte" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
</asp:Content>

