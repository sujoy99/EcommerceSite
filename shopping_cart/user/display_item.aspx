<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="display_item.aspx.cs" Inherits="user_display_item" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <asp:Repeater ID="d1" runat="server">
        <HeaderTemplate>
            <ul>
        </HeaderTemplate>

        <ItemTemplate>
                
                <li class="last">
                    <a href="product_desc.aspx?id=<%# Eval("id") %>"><img src="../<%# Eval("product_image")%>" alt="not found"/></a>
                    <asp:Image ID="Image1" runat="server" />
                    <div class="product-info">
                        <h3><%# Eval("product_name") %></h3>
                        <div class="product-desc">
                            <h3>Available Quantity : <%# Eval("product_qty") %></h3>
                            <p><%# Eval("product_desc") %></p>
                            <strong class="price"> &euro;<%# Eval("product_price") %></strong>
                        </div>
                    </div>
                </li>
            

        </ItemTemplate>

        <FooterTemplate>
            </ul>
        </FooterTemplate>

    </asp:Repeater>
</asp:Content>

