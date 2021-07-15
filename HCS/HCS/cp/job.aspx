<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="job.aspx.vb" Inherits="cp_job" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
        .style2
        {
            width: 116px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
    <br />
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="job_id" 
        DataSourceID="SqlDataSource2" DefaultMode="Insert" style="color: #000000">
        <EditItemTemplate>
            <table class="style1">
                <tr>
                    <td>
                        معرف الوظيفة:</td>
                    <td>
                        <asp:Label ID="job_idLabel1" runat="server" Text='<%# Eval("job_id") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        اسم الوظيفة:</td>
                    <td>
                        <asp:TextBox ID="job_nameTextBox" runat="server" 
                            Text='<%# Bind("job_name") %>' />
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
                        معرف الوظيفة:</td>
                    <td>
                        <asp:TextBox ID="job_idTextBox" runat="server" Text='<%# Bind("job_id") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        اسم الوظيفة:</td>
                    <td>
                        <asp:TextBox ID="job_nameTextBox" runat="server" 
                            Text='<%# Bind("job_name") %>' />
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
            job_id:
            <asp:Label ID="job_idLabel" runat="server" Text='<%# Eval("job_id") %>' />
            <br />
            job_name:
            <asp:Label ID="job_nameLabel" runat="server" Text='<%# Bind("job_name") %>' />
            <br />

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:HCSConnectionString %>" 
        DeleteCommand="DELETE FROM [tblJob] WHERE [job_id] = @job_id" 
        InsertCommand="INSERT INTO [tblJob] ([job_name]) VALUES (@job_name)" 
        SelectCommand="SELECT * FROM [tblJob] WHERE ([job_id] = @job_id)" 
        UpdateCommand="UPDATE [tblJob] SET [job_name] = @job_name WHERE [job_id] = @job_id">
        <DeleteParameters>
            <asp:Parameter Name="job_id" Type="Byte" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="job_name" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="job_id" 
                PropertyName="SelectedValue" Type="Byte" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="job_name" Type="String" />
            <asp:Parameter Name="job_id" Type="Byte" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
<p>
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="job_id" DataSourceID="SqlDataSource1" ForeColor="#333333" 
        GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField SelectText="تحرير" ShowSelectButton="True" />
            <asp:BoundField DataField="job_id" HeaderText="معرف الوظيفة" ReadOnly="True" 
                SortExpression="job_id" />
            <asp:BoundField DataField="job_name" HeaderText="الوظيفة" 
                SortExpression="job_name" />
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
        DeleteCommand="DELETE FROM [tblJob] WHERE [job_id] = @job_id" 
        InsertCommand="INSERT INTO [tblJob] ([job_name]) VALUES (@job_name)" 
        SelectCommand="SELECT * FROM [tblJob]" 
        UpdateCommand="UPDATE [tblJob] SET [job_name] = @job_name WHERE [job_id] = @job_id">
        <DeleteParameters>
            <asp:Parameter Name="job_id" Type="Byte" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="job_name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="job_name" Type="String" />
            <asp:Parameter Name="job_id" Type="Byte" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
</asp:Content>

