<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="cart_view.aspx.cs" Inherits="user_cart_view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <table>
        <div>
             
            <asp:DataList ID="d1" runat="server">
                <HeaderTemplate>
                    <table border="1px">
                        <tr style="background-color:silver; color:white; font-weight:bold">
                            <td>Product Image</td>
                            <td>Product Name</td>
                            <td>Product Description</td>
                            <td>Product Price</td>
                            <td>Product Qty</td>
                            <td>Product Id</td>
                            <td>Delete</td>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><img src="../<%# Eval("product_image") %>" height="100px" width="100px"/></td>
                        <td><%# Eval("product_name") %></td>
                        <td><%# Eval("product_desc") %></td>
                        <td><%# Eval("product_price") %></td>
                        <td><%# Eval("product_qty") %></td>
                        <td><%# Eval("product_id") %></td>
                        <td><a href="delete_cart.aspx?id=<%# Eval("id") %>">Delete</a></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:DataList>
            
        </div>
    </table>
    <p align="center">
        <asp:Label ID="l1" runat="server"></asp:Label><br />
        <asp:Button ID="b1" runat="server" Text="CheckOut" OnClick="b1_Click" />
   </p>
</asp:Content>

