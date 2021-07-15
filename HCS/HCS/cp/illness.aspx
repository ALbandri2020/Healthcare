<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="illness.aspx.vb" Inherits="cp_illness" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 132px;
        }
        .style3
        {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        &nbsp;</p>
    <p class="style3">
        الأمراض</p>
    <p>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="illness_id" 
            DataSourceID="SqlDataSource2" DefaultMode="Insert">
            <EditItemTemplate>
                <table class="style1">
                    <tr>
                        <td class="style2">
                            معرف المرض:</td>
                        <td>
                            <asp:Label ID="illness_idLabel1" runat="server" 
                                Text='<%# Eval("illness_id") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            اسم المرض:</td>
                        <td>
                            <asp:TextBox ID="illness_nameTextBox" runat="server" 
                                Text='<%# Bind("illness_name") %>' Width="279px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            الوصف والأعراض:</td>
                        <td>
                            <asp:TextBox ID="descTextBox" runat="server" Height="101px" 
                                Text='<%# Bind("desc") %>' TextMode="MultiLine" Width="283px" />
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
                            اسم المرض:</td>
                        <td>
                            <asp:TextBox ID="illness_nameTextBox" runat="server" 
                                Text='<%# Bind("illness_name") %>' Width="226px" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            الوصف والأعراض:</td>
                        <td>
                            <asp:TextBox ID="descTextBox" runat="server" Height="74px" 
                                Text='<%# Bind("desc") %>' TextMode="MultiLine" Width="238px" />
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
                illness_id:
                <asp:Label ID="illness_idLabel" runat="server" 
                    Text='<%# Eval("illness_id") %>' />
                <br />
                illness_name:
                <asp:Label ID="illness_nameLabel" runat="server" 
                    Text='<%# Bind("illness_name") %>' />
                <br />
                desc:
                <asp:Label ID="descLabel" runat="server" Text='<%# Bind("desc") %>' />
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
            DeleteCommand="DELETE FROM [tblIllness] WHERE [illness_id] = @illness_id" 
            InsertCommand="INSERT INTO [tblIllness] ([illness_name], [desc]) VALUES (@illness_name, @desc)" 
            SelectCommand="SELECT * FROM [tblIllness] WHERE ([illness_id] = @illness_id)" 
            UpdateCommand="UPDATE [tblIllness] SET [illness_name] = @illness_name, [desc] = @desc WHERE [illness_id] = @illness_id">
            <DeleteParameters>
                <asp:Parameter Name="illness_id" Type="Int16" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="illness_name" Type="String" />
                <asp:Parameter Name="desc" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="illness_id" 
                    PropertyName="SelectedValue" Type="Int16" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="illness_name" Type="String" />
                <asp:Parameter Name="desc" Type="String" />
                <asp:Parameter Name="illness_id" Type="Int16" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            DataKeyNames="illness_id" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" SelectText="تحرير" />
                <asp:BoundField DataField="illness_id" HeaderText="معرف المرض" 
                    InsertVisible="False" ReadOnly="True" SortExpression="illness_id" />
                <asp:BoundField DataField="illness_name" HeaderText="اسم المرض" 
                    SortExpression="illness_name" />
                <asp:BoundField DataField="desc" HeaderText="الوصف والأعراض" 
                    SortExpression="desc" />
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
            DeleteCommand="DELETE FROM [tblIllness] WHERE [illness_id] = @illness_id" 
            InsertCommand="INSERT INTO [tblIllness] ([illness_name], [desc]) VALUES (@illness_name, @desc)" 
            SelectCommand="SELECT * FROM [tblIllness]" 
            UpdateCommand="UPDATE [tblIllness] SET [illness_name] = @illness_name, [desc] = @desc WHERE [illness_id] = @illness_id">
            <DeleteParameters>
                <asp:Parameter Name="illness_id" Type="Int16" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="illness_name" Type="String" />
                <asp:Parameter Name="desc" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="illness_name" Type="String" />
                <asp:Parameter Name="desc" Type="String" />
                <asp:Parameter Name="illness_id" Type="Int16" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

