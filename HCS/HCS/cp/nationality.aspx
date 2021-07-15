<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="nationality.aspx.vb" Inherits="cp_nationality" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        color: #000000;
        font-size: large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
    <br />
    <span class="style2"><strong>الجنسيات</strong></span></p>
<p>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="nationality_id" 
        DataSourceID="SqlDataSource2" DefaultMode="Insert" style="color: #000000" 
        Width="284px">
        <EditItemTemplate>
            <table class="style1">
                <tr>
                    <td>
                        معرف الجنسية:</td>
                    <td>
                        <asp:Label ID="nationality_idLabel1" runat="server" 
                            Text='<%# Eval("nationality_id") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        الجنسية:</td>
                    <td>
                        <asp:TextBox ID="nationality_nameTextBox" runat="server" 
                            Text='<%# Bind("nationality_name") %>' />
                    </td>
                </tr>
            </table>
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="تحديث" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="إلغاء" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table class="style1">
                <tr>
                    <td>
                        معرف الجنسية:</td>
                    <td>
                        <asp:TextBox ID="nationality_idTextBox" runat="server" 
                            Text='<%# Bind("nationality_id") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        الجنسية:</td>
                    <td>
                        <asp:TextBox ID="nationality_nameTextBox" runat="server" 
                            Text='<%# Bind("nationality_name") %>' />
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
            nationality_id:
            <asp:Label ID="nationality_idLabel" runat="server" 
                Text='<%# Eval("nationality_id") %>' />
            <br />
            nationality_name:
            <asp:Label ID="nationality_nameLabel" runat="server" 
                Text='<%# Bind("nationality_name") %>' />
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
        DeleteCommand="DELETE FROM [tblNationality] WHERE [nationality_id] = @nationality_id" 
        InsertCommand="INSERT INTO [tblNationality] ([nationality_name]) VALUES (@nationality_name)" 
        SelectCommand="SELECT * FROM [tblNationality] WHERE ([nationality_id] = @nationality_id)" 
        UpdateCommand="UPDATE [tblNationality] SET [nationality_name] = @nationality_name WHERE [nationality_id] = @nationality_id">
        <DeleteParameters>
            <asp:Parameter Name="nationality_id" Type="Byte" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nationality_name" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="nationality_id" 
                PropertyName="SelectedValue" Type="Byte" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="nationality_name" Type="String" />
            <asp:Parameter Name="nationality_id" Type="Byte" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="nationality_id" DataSourceID="SqlDataSource1" ForeColor="#333333" 
        GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField SelectText="تحرير" ShowSelectButton="True" />
            <asp:BoundField DataField="nationality_id" HeaderText="معرف الجنسية" 
                ReadOnly="True" SortExpression="nationality_id" />
            <asp:BoundField DataField="nationality_name" HeaderText="الجنسية" 
                SortExpression="nationality_name" />
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
        DeleteCommand="DELETE FROM [tblNationality] WHERE [nationality_id] = @nationality_id" 
        InsertCommand="INSERT INTO [tblNationality] ([nationality_name]) VALUES (@nationality_name)" 
        SelectCommand="SELECT * FROM [tblNationality]" 
        UpdateCommand="UPDATE [tblNationality] SET [nationality_name] = @nationality_name WHERE [nationality_id] = @nationality_id">
        <DeleteParameters>
            <asp:Parameter Name="nationality_id" Type="Byte" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nationality_name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nationality_name" Type="String" />
            <asp:Parameter Name="nationality_id" Type="Byte" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
</asp:Content>

