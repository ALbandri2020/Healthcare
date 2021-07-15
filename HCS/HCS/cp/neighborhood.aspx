<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="neighborhood.aspx.vb" Inherits="cp_neighborhood" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
        }
        .style2
        {
            width: 100%;
        }
        .style4
        {
            width: 100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        &nbsp;</p>
    <p>
        <span class="style1">الأحياء</span><br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="neighborhood_id" 
            DataSourceID="SqlDataSource2" DefaultMode="Insert" Width="286px">
            <EditItemTemplate>
                <table class="style2">
                    <tr>
                        <td class="style4">
                            معرف:</td>
                        <td>
                            <asp:Label ID="neighborhood_idLabel1" runat="server" 
                                Text='<%# Eval("neighborhood_id") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            الحي:</td>
                        <td>
                            <asp:TextBox ID="neighborhood_nameTextBox" runat="server" 
                                Text='<%# Bind("neighborhood_name") %>' Width="212px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            المدينة:</td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server" 
                                DataSourceID="SqlDataSource1" DataTextField="City_name" 
                                DataValueField="City_id" SelectedValue='<%# Bind("city_id") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:HCSConnectionString %>" 
                                SelectCommand="SELECT [City_id], [City_name] FROM [tblCity]">
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="تحديث" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="إلغاء" />
            </EditItemTemplate>
            <InsertItemTemplate>
                <table class="style2">
                    <tr>
                        <td>
                            اسم الحي:</td>
                        <td>
                            <asp:TextBox ID="neighborhood_nameTextBox" runat="server" 
                                Text='<%# Bind("neighborhood_name") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            المدينة:</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                DataSourceID="SqlDataSource1" DataTextField="City_name" 
                                DataValueField="City_id" SelectedValue='<%# Bind("city_id") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:HCSConnectionString %>" 
                                SelectCommand="SELECT [City_id], [City_name] FROM [tblCity]">
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="إدخال" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="إلغاء" />
            </InsertItemTemplate>
            <ItemTemplate>
                neighborhood_id:
                <asp:Label ID="neighborhood_idLabel" runat="server" 
                    Text='<%# Eval("neighborhood_id") %>' />
                <br />
                neighborhood_name:
                <asp:Label ID="neighborhood_nameLabel" runat="server" 
                    Text='<%# Bind("neighborhood_name") %>' />
                <br />
                city_id:
                <asp:Label ID="city_idLabel" runat="server" Text='<%# Bind("city_id") %>' />
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
            DeleteCommand="DELETE FROM [tblNeighborhood] WHERE [neighborhood_id] = @neighborhood_id" 
            InsertCommand="INSERT INTO [tblNeighborhood] ([neighborhood_name], [city_id]) VALUES (@neighborhood_name, @city_id)" 
            SelectCommand="SELECT * FROM [tblNeighborhood] WHERE ([neighborhood_id] = @neighborhood_id)" 
            
            UpdateCommand="UPDATE [tblNeighborhood] SET [neighborhood_name] = @neighborhood_name, [city_id] = @city_id WHERE [neighborhood_id] = @neighborhood_id">
            <DeleteParameters>
                <asp:Parameter Name="neighborhood_id" Type="Int16" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="neighborhood_name" Type="String" />
                <asp:Parameter Name="city_id" Type="Byte" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="neighborhood_id" 
                    PropertyName="SelectedValue" Type="Int16" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="neighborhood_name" Type="String" />
                <asp:Parameter Name="city_id" Type="Byte" />
                <asp:Parameter Name="neighborhood_id" Type="Int16" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            DataKeyNames="neighborhood_id" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField SelectText="تحرير" ShowSelectButton="True" />
                <asp:BoundField DataField="neighborhood_id" HeaderText="رقم الحي" 
                    InsertVisible="False" ReadOnly="True" SortExpression="neighborhood_id" />
                <asp:BoundField DataField="neighborhood_name" HeaderText="اسم الحي" 
                    SortExpression="neighborhood_name" />
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
            DeleteCommand="DELETE FROM [tblNeighborhood] WHERE [neighborhood_id] = @neighborhood_id" 
            InsertCommand="INSERT INTO [tblNeighborhood] ([neighborhood_name], [city_id]) VALUES (@neighborhood_name, @city_id)" 
            SelectCommand="SELECT * FROM [tblNeighborhood]" 
            UpdateCommand="UPDATE [tblNeighborhood] SET [neighborhood_name] = @neighborhood_name, [city_id] = @city_id WHERE [neighborhood_id] = @neighborhood_id">
            <DeleteParameters>
                <asp:Parameter Name="neighborhood_id" Type="Int16" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="neighborhood_name" Type="String" />
                <asp:Parameter Name="city_id" Type="Byte" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="neighborhood_name" Type="String" />
                <asp:Parameter Name="city_id" Type="Byte" />
                <asp:Parameter Name="neighborhood_id" Type="Int16" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

