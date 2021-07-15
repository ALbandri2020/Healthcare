<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="patient.aspx.vb" Inherits="cp_patient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        &nbsp;</p>
    <p class="style2">
        بيانات المرضى</p>
    <p>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="p_id" 
            DataSourceID="SqlDataSource2" DefaultMode="Insert">
            <EditItemTemplate>
                p_id:
                <asp:Label ID="p_idLabel1" runat="server" Text='<%# Eval("p_id") %>' />
                <br />
                name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />
                mobile:
                <asp:TextBox ID="mobileTextBox" runat="server" Text='<%# Bind("mobile") %>' />
                <br />
                birth_date:
                <asp:TextBox ID="birth_dateTextBox" runat="server" 
                    Text='<%# Bind("birth_date") %>' />
                <br />
                city_id:
                <asp:TextBox ID="city_idTextBox" runat="server" Text='<%# Bind("city_id") %>' />
                <br />
                address:
                <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                <br />
                location:
                <asp:TextBox ID="locationTextBox" runat="server" 
                    Text='<%# Bind("location") %>' />
                <br />
                gender:
                <asp:CheckBox ID="genderCheckBox" runat="server" 
                    Checked='<%# Bind("gender") %>' />
                <br />
                nationality_id:
                <asp:TextBox ID="nationality_idTextBox" runat="server" 
                    Text='<%# Bind("nationality_id") %>' />
                <br />
                file_id:
                <asp:TextBox ID="file_idTextBox" runat="server" Text='<%# Bind("file_id") %>' />
                <br />
                center_id:
                <asp:TextBox ID="center_idTextBox" runat="server" 
                    Text='<%# Bind("center_id") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                <table class="style1">
                    <tr>
                        <td>
                            رقم المريض:</td>
                        <td>
                            <asp:TextBox ID="p_idTextBox" runat="server" Text='<%# Bind("p_id") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            اسم المريض:</td>
                        <td>
                            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            رقم الجوال:</td>
                        <td>
                            <asp:TextBox ID="mobileTextBox" runat="server" Text='<%# Bind("mobile") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            تاريخ الميلاد:</td>
                        <td>
                            <asp:TextBox ID="birth_dateTextBox" runat="server" 
                                Text='<%# Bind("birth_date") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            المدينة:</td>
                        <td>
                            <asp:TextBox ID="city_idTextBox" runat="server" Text='<%# Bind("city_id") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            العنوان:</td>
                        <td>
                            <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            الإحداثيات:</td>
                        <td>
                            <asp:TextBox ID="locationTextBox" runat="server" 
                                Text='<%# Bind("location") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            الجنس:</td>
                        <td>
                            <asp:CheckBox ID="genderCheckBox" runat="server" 
                                Checked='<%# Bind("gender") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            الجنسية:</td>
                        <td>
                            <asp:TextBox ID="nationality_idTextBox" runat="server" 
                                Text='<%# Bind("nationality_id") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            رقم الملف:</td>
                        <td>
                            <asp:TextBox ID="file_idTextBox" runat="server" Text='<%# Bind("file_id") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            رقم المركز التابع له:</td>
                        <td>
                            <asp:TextBox ID="center_idTextBox" runat="server" 
                                Text='<%# Bind("center_id") %>' />
                        </td>
                    </tr>
                </table>
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="إدخال" />
&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" 
                    CommandName="Cancel" Text="إلغاء" />
            </InsertItemTemplate>
            <ItemTemplate>
                p_id:
                <asp:Label ID="p_idLabel" runat="server" Text='<%# Eval("p_id") %>' />
                <br />
                name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
                <br />
                mobile:
                <asp:Label ID="mobileLabel" runat="server" Text='<%# Bind("mobile") %>' />
                <br />
                birth_date:
                <asp:Label ID="birth_dateLabel" runat="server" 
                    Text='<%# Bind("birth_date") %>' />
                <br />
                city_id:
                <asp:Label ID="city_idLabel" runat="server" Text='<%# Bind("city_id") %>' />
                <br />
                address:
                <asp:Label ID="addressLabel" runat="server" Text='<%# Bind("address") %>' />
                <br />
                location:
                <asp:Label ID="locationLabel" runat="server" Text='<%# Bind("location") %>' />
                <br />
                gender:
                <asp:CheckBox ID="genderCheckBox" runat="server" 
                    Checked='<%# Bind("gender") %>' Enabled="false" />
                <br />
                nationality_id:
                <asp:Label ID="nationality_idLabel" runat="server" 
                    Text='<%# Bind("nationality_id") %>' />
                <br />
                file_id:
                <asp:Label ID="file_idLabel" runat="server" Text='<%# Bind("file_id") %>' />
                <br />
                center_id:
                <asp:Label ID="center_idLabel" runat="server" Text='<%# Bind("center_id") %>' />
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
            DeleteCommand="DELETE FROM [tblPatient] WHERE [p_id] = @p_id" 
            InsertCommand="INSERT INTO [tblPatient] ([p_id], [name], [mobile], [birth_date], [city_id], [address], [location], [gender], [nationality_id], [file_id], [center_id]) VALUES (@p_id, @name, @mobile, @birth_date, @city_id, @address, @location, @gender, @nationality_id, @file_id, @center_id)" 
            SelectCommand="SELECT * FROM [tblPatient] WHERE ([p_id] = @p_id)" 
            UpdateCommand="UPDATE [tblPatient] SET [name] = @name, [mobile] = @mobile, [birth_date] = @birth_date, [city_id] = @city_id, [address] = @address, [location] = @location, [gender] = @gender, [nationality_id] = @nationality_id, [file_id] = @file_id, [center_id] = @center_id WHERE [p_id] = @p_id">
            <DeleteParameters>
                <asp:Parameter Name="p_id" Type="Int64" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="p_id" Type="Int64" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="mobile" Type="Int32" />
                <asp:Parameter DbType="Date" Name="birth_date" />
                <asp:Parameter Name="city_id" Type="Byte" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="location" Type="String" />
                <asp:Parameter Name="gender" Type="Boolean" />
                <asp:Parameter Name="nationality_id" Type="Byte" />
                <asp:Parameter Name="file_id" Type="Int32" />
                <asp:Parameter Name="center_id" Type="Int16" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="p_id" 
                    PropertyName="SelectedValue" Type="Int64" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="mobile" Type="Int32" />
                <asp:Parameter DbType="Date" Name="birth_date" />
                <asp:Parameter Name="city_id" Type="Byte" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="location" Type="String" />
                <asp:Parameter Name="gender" Type="Boolean" />
                <asp:Parameter Name="nationality_id" Type="Byte" />
                <asp:Parameter Name="file_id" Type="Int32" />
                <asp:Parameter Name="center_id" Type="Int16" />
                <asp:Parameter Name="p_id" Type="Int64" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    </p>
    <p>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            DataKeyNames="p_id" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="p_id" HeaderText="رقم المريض" ReadOnly="True" 
                    SortExpression="p_id" />
                <asp:BoundField DataField="name" HeaderText="الاسم" SortExpression="name" />
                <asp:BoundField DataField="mobile" HeaderText="الجوال" 
                    SortExpression="mobile" />
                <asp:BoundField DataField="file_id" HeaderText="رقم الملف" 
                    SortExpression="file_id" />
                <asp:BoundField DataField="birth_date" HeaderText="تاريخ الميلاد" 
                    SortExpression="birth_date" />
                <asp:BoundField DataField="city_id" HeaderText="city_id" 
                    SortExpression="city_id" />
                <asp:BoundField DataField="address" HeaderText="العنوان" 
                    SortExpression="address" />
                <asp:CheckBoxField DataField="gender" HeaderText="الجنس" 
                    SortExpression="gender" />
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
            DeleteCommand="DELETE FROM [tblPatient] WHERE [p_id] = @p_id" 
            InsertCommand="INSERT INTO [tblPatient] ([p_id], [name], [mobile], [birth_date], [city_id], [address], [location], [gender], [nationality_id], [file_id], [center_id]) VALUES (@p_id, @name, @mobile, @birth_date, @city_id, @address, @location, @gender, @nationality_id, @file_id, @center_id)" 
            SelectCommand="SELECT * FROM [tblPatient]" 
            UpdateCommand="UPDATE [tblPatient] SET [name] = @name, [mobile] = @mobile, [birth_date] = @birth_date, [city_id] = @city_id, [address] = @address, [location] = @location, [gender] = @gender, [nationality_id] = @nationality_id, [file_id] = @file_id, [center_id] = @center_id WHERE [p_id] = @p_id">
            <DeleteParameters>
                <asp:Parameter Name="p_id" Type="Int64" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="p_id" Type="Int64" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="mobile" Type="Int32" />
                <asp:Parameter DbType="Date" Name="birth_date" />
                <asp:Parameter Name="city_id" Type="Byte" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="location" Type="String" />
                <asp:Parameter Name="gender" Type="Boolean" />
                <asp:Parameter Name="nationality_id" Type="Byte" />
                <asp:Parameter Name="file_id" Type="Int32" />
                <asp:Parameter Name="center_id" Type="Int16" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="mobile" Type="Int32" />
                <asp:Parameter DbType="Date" Name="birth_date" />
                <asp:Parameter Name="city_id" Type="Byte" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="location" Type="String" />
                <asp:Parameter Name="gender" Type="Boolean" />
                <asp:Parameter Name="nationality_id" Type="Byte" />
                <asp:Parameter Name="file_id" Type="Int32" />
                <asp:Parameter Name="center_id" Type="Int16" />
                <asp:Parameter Name="p_id" Type="Int64" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

