<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="add_category.aspx.cs" Inherits="admin_add_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">

    
    <table>
        <tr>
            <td>Enter Category Name</td>
            <td><asp:TextBox ID="t1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Button ID="b1" runat="server" Text="Add Category" OnClick="b1_Click" />
            </td>
        </tr>
        
    </table>
    <asp:DataList DataList ID="d1" runat="server">
        <HeaderTemplate>
            <table>
        </HeaderTemplate>
        <itemTemplate>
            <tr>
                <td><%# Eval("product_category") %></td>
                <td><a href="delete.aspx?category=<%# Eval("product_category") %>">Delete</a></td>
            </tr>
            
        </itemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:DataList>

</asp:Content>

