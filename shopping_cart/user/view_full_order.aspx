<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="view_full_order.aspx.cs" Inherits="user_view_full_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <asp:Repeater ID="r1" runat="server">
        <HeaderTemplate>
            <table border="1">
                <tr style="background-color:gray; color:white;">
                    <td>Product Image</td>
                    <td>Product Name</td>
                    <td>Product Price</td>
                    <td>Product Qty</td>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td><img src="../<%# Eval("product_image") %>" height="100px" width="100px"/></td>
                <td><%# Eval("product_name") %></td>
                <td><%# Eval("product_price") %></td>
                <td><%# Eval("product_qty") %></td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>

    <asp:Label ID="l1" runat="server" Text=""></asp:Label>
</asp:Content>

