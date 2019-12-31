using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class user_login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Dev\tryasp\ecommerce\shopping_cart\shopping_cart\App_Data\shopping.mdf;Integrated Security=True");
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from registration where email='"+TextBox1.Text+"' and password='"+TextBox2.Text+"'";
        i = Convert.ToInt32(cmd.ExecuteScalar());

        if (i == 1)
        {
            if (Session["checkoutbutton"] == "yes")
            {
                Session["user"] = TextBox1.Text;
                Response.Redirect("update_order_detail.aspx");
            }
            else
            {
                Session["user"] = TextBox1.Text;
                Response.Redirect("order_detail.aspx");
            }
           
            
        }
        else
        {
            Label1.Text = "Invalid Username or Password";
        }

        con.Close();
    }
}