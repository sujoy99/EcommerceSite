<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="display_order.aspx.cs" Inherits="user_display_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <asp:Repeater ID="r1" runat="server">
        <HeaderTemplate>
            <table border="1px">
                <tr style="background-color:gray; color:white;">
                    <td>Id</td>
                    <td>First Name</td>
                    <td>Last Name</td>
                    <td>City</td>
                    <td>State</td>
                    <td>Pincode</td>
                    <td>View Full Order</td>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
                <tr>
                    <td><%# Eval("Id") %></td>
                    <td><%# Eval("firstname") %></td>
                    <td><%# Eval("lastname") %></td>
                    <td><%# Eval("city") %></td>
                    <td><%# Eval("state") %></td>
                    <td><%# Eval("pincode") %></td>
                    <td><a href="view_full_order.aspx?id=<%# Eval("Id") %>"></a></td>
                </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>

    </asp:Repeater>
</asp:Content>

