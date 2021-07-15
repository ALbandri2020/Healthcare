<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="memberType.aspx.vb" Inherits="cp_memberType" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
    <br />
</p>
<p>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="member_type_id" 
        DataSourceID="SqlDataSource2" DefaultMode="Insert">
        <EditItemTemplate>
            member_type_id:
            <asp:Label ID="member_type_idLabel1" runat="server" 
                Text='<%# Eval("member_type_id") %>' />
            <br />
            member_type_name:
            <asp:TextBox ID="member_type_nameTextBox" runat="server" 
                Text='<%# Bind("member_type_name") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            member_type_id:
            <asp:TextBox ID="member_type_idTextBox" runat="server" 
                Text='<%# Bind("member_type_id") %>' />
            <br />
            member_type_name:
            <asp:TextBox ID="member_type_nameTextBox" runat="server" 
                Text='<%# Bind("member_type_name") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            member_type_id:
            <asp:Label ID="member_type_idLabel" runat="server" 
                Text='<%# Eval("member_type_id") %>' />
            <br />
            member_type_name:
            <asp:Label ID="member_type_nameLabel" runat="server" 
                Text='<%# Bind("member_type_name") %>' />
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
        DeleteCommand="DELETE FROM [tblMemberType] WHERE [member_type_id] = @member_type_id" 
        InsertCommand="INSERT INTO [tblMemberType] ([member_type_name]) VALUES (@member_type_name)" 
        SelectCommand="SELECT * FROM [tblMemberType]" 
        UpdateCommand="UPDATE [tblMemberType] SET [member_type_name] = @member_type_name WHERE [member_type_id] = @member_type_id">
        <DeleteParameters>
            <asp:Parameter Name="member_type_id" Type="Byte" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="member_type_name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="member_type_name" Type="String" />
            <asp:Parameter Name="member_type_id" Type="Byte" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
<p>
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="member_type_id" DataSourceID="SqlDataSource1" ForeColor="#333333" 
        GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="member_type_id" HeaderText="member_type_id" 
                ReadOnly="True" SortExpression="member_type_id" />
            <asp:BoundField DataField="member_type_name" HeaderText="member_type_name" 
                SortExpression="member_type_name" />
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
        DeleteCommand="DELETE FROM [tblMemberType] WHERE [member_type_id] = @member_type_id" 
        InsertCommand="INSERT INTO [tblMemberType] ([member_type_name]) VALUES (@member_type_name)" 
        SelectCommand="SELECT * FROM [tblMemberType]" 
        UpdateCommand="UPDATE [tblMemberType] SET [member_type_name] = @member_type_name WHERE [member_type_id] = @member_type_id">
        <DeleteParameters>
            <asp:Parameter Name="member_type_id" Type="Byte" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="member_type_name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="member_type_name" Type="String" />
            <asp:Parameter Name="member_type_id" Type="Byte" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
</asp:Content>

