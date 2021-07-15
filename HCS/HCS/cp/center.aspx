<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="center.aspx.vb" Inherits="cp_center" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="center_id" 
        DataSourceID="SqlDataSource3" DefaultMode="Insert">
        <EditItemTemplate>
            center_id:
            <asp:Label ID="center_idLabel1" runat="server" 
                Text='<%# Eval("center_id") %>' />
            <br />
            center_name:
            <asp:TextBox ID="center_nameTextBox" runat="server" 
                Text='<%# Bind("center_name") %>' />
            <br />
            neighborhood_id:
            <asp:TextBox ID="neighborhood_idTextBox" runat="server" 
                Text='<%# Bind("neighborhood_id") %>' />
            <br />
            location:
            <asp:TextBox ID="locationTextBox" runat="server" 
                Text='<%# Bind("location") %>' />
            <br />
            address:
            <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
            <br />
            tel1:
            <asp:TextBox ID="tel1TextBox" runat="server" Text='<%# Bind("tel1") %>' />
            <br />
            tel2:
            <asp:TextBox ID="tel2TextBox" runat="server" Text='<%# Bind("tel2") %>' />
            <br />
            tel3:
            <asp:TextBox ID="tel3TextBox" runat="server" Text='<%# Bind("tel3") %>' />
            <br />
            mobile1:
            <asp:TextBox ID="mobile1TextBox" runat="server" Text='<%# Bind("mobile1") %>' />
            <br />
            mobile2:
            <asp:TextBox ID="mobile2TextBox" runat="server" Text='<%# Bind("mobile2") %>' />
            <br />
            mobile3:
            <asp:TextBox ID="mobile3TextBox" runat="server" Text='<%# Bind("mobile3") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            center_name:
            <asp:TextBox ID="center_nameTextBox" runat="server" 
                Text='<%# Bind("center_name") %>' />
            <br />
            neighborhood_id:
            <asp:TextBox ID="neighborhood_idTextBox" runat="server" 
                Text='<%# Bind("neighborhood_id") %>' />
            <br />
            location:
            <asp:TextBox ID="locationTextBox" runat="server" 
                Text='<%# Bind("location") %>' />
            <br />
            address:
            <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
            <br />
            tel1:
            <asp:TextBox ID="tel1TextBox" runat="server" Text='<%# Bind("tel1") %>' />
            <br />
            tel2:
            <asp:TextBox ID="tel2TextBox" runat="server" Text='<%# Bind("tel2") %>' />
            <br />
            tel3:
            <asp:TextBox ID="tel3TextBox" runat="server" Text='<%# Bind("tel3") %>' />
            <br />
            mobile1:
            <asp:TextBox ID="mobile1TextBox" runat="server" Text='<%# Bind("mobile1") %>' />
            <br />
            mobile2:
            <asp:TextBox ID="mobile2TextBox" runat="server" Text='<%# Bind("mobile2") %>' />
            <br />
            mobile3:
            <asp:TextBox ID="mobile3TextBox" runat="server" Text='<%# Bind("mobile3") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            center_id:
            <asp:Label ID="center_idLabel" runat="server" Text='<%# Eval("center_id") %>' />
            <br />
            center_name:
            <asp:Label ID="center_nameLabel" runat="server" 
                Text='<%# Bind("center_name") %>' />
            <br />
            neighborhood_id:
            <asp:Label ID="neighborhood_idLabel" runat="server" 
                Text='<%# Bind("neighborhood_id") %>' />
            <br />
            location:
            <asp:Label ID="locationLabel" runat="server" Text='<%# Bind("location") %>' />
            <br />
            address:
            <asp:Label ID="addressLabel" runat="server" Text='<%# Bind("address") %>' />
            <br />
            tel1:
            <asp:Label ID="tel1Label" runat="server" Text='<%# Bind("tel1") %>' />
            <br />
            tel2:
            <asp:Label ID="tel2Label" runat="server" Text='<%# Bind("tel2") %>' />
            <br />
            tel3:
            <asp:Label ID="tel3Label" runat="server" Text='<%# Bind("tel3") %>' />
            <br />
            mobile1:
            <asp:Label ID="mobile1Label" runat="server" Text='<%# Bind("mobile1") %>' />
            <br />
            mobile2:
            <asp:Label ID="mobile2Label" runat="server" Text='<%# Bind("mobile2") %>' />
            <br />
            mobile3:
            <asp:Label ID="mobile3Label" runat="server" Text='<%# Bind("mobile3") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />
        </ItemTemplate>
</asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:HCSConnectionString %>" 
        DeleteCommand="DELETE FROM [tblCenter] WHERE [center_id] = @center_id" 
        InsertCommand="INSERT INTO [tblCenter] ([center_name], [neighborhood_id], [location], [address], [tel1], [tel2], [tel3], [mobile1], [mobile2], [mobile3]) VALUES (@center_name, @neighborhood_id, @location, @address, @tel1, @tel2, @tel3, @mobile1, @mobile2, @mobile3)" 
        SelectCommand="SELECT * FROM [tblCenter] WHERE ([center_id] = @center_id)" 
        UpdateCommand="UPDATE [tblCenter] SET [center_name] = @center_name, [neighborhood_id] = @neighborhood_id, [location] = @location, [address] = @address, [tel1] = @tel1, [tel2] = @tel2, [tel3] = @tel3, [mobile1] = @mobile1, [mobile2] = @mobile2, [mobile3] = @mobile3 WHERE [center_id] = @center_id">
        <DeleteParameters>
            <asp:Parameter Name="center_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="center_name" Type="String" />
            <asp:Parameter Name="neighborhood_id" Type="Int16" />
            <asp:Parameter Name="location" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="tel1" Type="String" />
            <asp:Parameter Name="tel2" Type="String" />
            <asp:Parameter Name="tel3" Type="String" />
            <asp:Parameter Name="mobile1" Type="String" />
            <asp:Parameter Name="mobile2" Type="String" />
            <asp:Parameter Name="mobile3" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="center_id" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="center_name" Type="String" />
            <asp:Parameter Name="neighborhood_id" Type="Int16" />
            <asp:Parameter Name="location" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="tel1" Type="String" />
            <asp:Parameter Name="tel2" Type="String" />
            <asp:Parameter Name="tel3" Type="String" />
            <asp:Parameter Name="mobile1" Type="String" />
            <asp:Parameter Name="mobile2" Type="String" />
            <asp:Parameter Name="mobile3" Type="String" />
            <asp:Parameter Name="center_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <table class="style1">
        <tr>
            <td valign="top">
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    CellPadding="4" DataKeyNames="center_id" DataSourceID="SqlDataSource1" 
    ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="center_id" HeaderText="center_id" 
            InsertVisible="False" ReadOnly="True" SortExpression="center_id" />
        <asp:BoundField DataField="center_name" HeaderText="center_name" 
            SortExpression="center_name" />
        <asp:BoundField DataField="neighborhood_id" HeaderText="neighborhood_id" 
            SortExpression="neighborhood_id" />
        <asp:BoundField DataField="location" HeaderText="location" 
            SortExpression="location" />
        <asp:BoundField DataField="address" HeaderText="address" 
            SortExpression="address" />
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
            </td>
            <td valign="top">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    DataKeyNames="center_id" DataSourceID="SqlDataSource2" Height="50px" 
                    Width="125px">
                    <Fields>
                        <asp:BoundField DataField="center_id" HeaderText="center_id" 
                            InsertVisible="False" ReadOnly="True" SortExpression="center_id" />
                        <asp:BoundField DataField="center_name" HeaderText="center_name" 
                            SortExpression="center_name" />
                        <asp:BoundField DataField="neighborhood_id" HeaderText="neighborhood_id" 
                            SortExpression="neighborhood_id" />
                        <asp:BoundField DataField="location" HeaderText="location" 
                            SortExpression="location" />
                        <asp:BoundField DataField="address" HeaderText="address" 
                            SortExpression="address" />
                        <asp:BoundField DataField="tel1" HeaderText="tel1" SortExpression="tel1" />
                        <asp:BoundField DataField="tel2" HeaderText="tel2" SortExpression="tel2" />
                        <asp:BoundField DataField="tel3" HeaderText="tel3" SortExpression="tel3" />
                        <asp:BoundField DataField="mobile1" HeaderText="mobile1" 
                            SortExpression="mobile1" />
                        <asp:BoundField DataField="mobile2" HeaderText="mobile2" 
                            SortExpression="mobile2" />
                        <asp:BoundField DataField="mobile3" HeaderText="mobile3" 
                            SortExpression="mobile3" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:HCSConnectionString %>" 
                    SelectCommand="SELECT * FROM [tblCenter] WHERE ([center_id] = @center_id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="center_id" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
<br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:HCSConnectionString %>" 
    DeleteCommand="DELETE FROM [tblCenter] WHERE [center_id] = @center_id" 
    InsertCommand="INSERT INTO [tblCenter] ([center_name], [neighborhood_id], [location], [address], [tel1], [tel2], [tel3], [mobile1], [mobile2], [mobile3]) VALUES (@center_name, @neighborhood_id, @location, @address, @tel1, @tel2, @tel3, @mobile1, @mobile2, @mobile3)" 
    SelectCommand="SELECT * FROM [tblCenter]" 
    UpdateCommand="UPDATE [tblCenter] SET [center_name] = @center_name, [neighborhood_id] = @neighborhood_id, [location] = @location, [address] = @address, [tel1] = @tel1, [tel2] = @tel2, [tel3] = @tel3, [mobile1] = @mobile1, [mobile2] = @mobile2, [mobile3] = @mobile3 WHERE [center_id] = @center_id">
    <DeleteParameters>
        <asp:Parameter Name="center_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="center_name" Type="String" />
        <asp:Parameter Name="neighborhood_id" Type="Int16" />
        <asp:Parameter Name="location" Type="String" />
        <asp:Parameter Name="address" Type="String" />
        <asp:Parameter Name="tel1" Type="String" />
        <asp:Parameter Name="tel2" Type="String" />
        <asp:Parameter Name="tel3" Type="String" />
        <asp:Parameter Name="mobile1" Type="String" />
        <asp:Parameter Name="mobile2" Type="String" />
        <asp:Parameter Name="mobile3" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="center_name" Type="String" />
        <asp:Parameter Name="neighborhood_id" Type="Int16" />
        <asp:Parameter Name="location" Type="String" />
        <asp:Parameter Name="address" Type="String" />
        <asp:Parameter Name="tel1" Type="String" />
        <asp:Parameter Name="tel2" Type="String" />
        <asp:Parameter Name="tel3" Type="String" />
        <asp:Parameter Name="mobile1" Type="String" />
        <asp:Parameter Name="mobile2" Type="String" />
        <asp:Parameter Name="mobile3" Type="String" />
        <asp:Parameter Name="center_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

