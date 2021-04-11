using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand comm;
    SqlDataAdapter da;
    DataSet ds;
    public string cs = ConfigurationManager.AppSettings["Connect"].ToString();

    protected void Page_Load(object sender, EventArgs e)
    {//Session["l_id"]
        conn = new SqlConnection(cs);
        if (!IsPostBack)
        {
            DataTable dt = new DataTable();
            using (SqlCommand cmd = new SqlCommand("select Slot_no,slot_url from ParkingSlot_master where Area_id=@Area_id", conn))
            {
                cmd.Parameters.AddWithValue("@Area_id", Session["l_id"]);
                using (SqlDataAdapter adp = new SqlDataAdapter(cmd))
                {
                    adp.Fill(dt);
                }
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            DataTable dt2 = new DataTable();
            using (SqlCommand cmd2 = new SqlCommand("select Slot_id,Slot_no from ParkingSlot_master where Area_id=@Area_id", conn))
            {
                cmd2.Parameters.AddWithValue("@Area_id", Session["l_id"]);
                using (SqlDataAdapter ad = new SqlDataAdapter(cmd2))
                {
                    ad.Fill(dt2);
                }
                DropDownList1.DataSource = dt2;
                DropDownList1.DataTextField = "Slot_no";
                DropDownList1.DataValueField = "Slot_id";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "--SELECT--");
            }
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Response.Clear();
        Response.ContentType = "application/octet-stream";
        Response.AppendHeader("Content-Disposition", "filename=" + e.CommandArgument);
        Response.TransmitFile(Server.MapPath("" + e.CommandArgument));
        Response.End();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = DropDownList1.SelectedValue;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string slot_file = "";
        if (FileUpload1.HasFile)
        {
            slot_file = Path.GetFileName(FileUpload1.FileName);
            FileUpload1.SaveAs(Server.MapPath(@"~/url/" + slot_file));
        }
        using (SqlCommand cmd = new SqlCommand("update ParkingSlot_master set slot_url=@slot_url where Slot_id=@Slot_id", conn))
        {
            cmd.Parameters.AddWithValue("@slot_url", "~/url/" + slot_file);
            cmd.Parameters.AddWithValue("@Slot_id", TextBox1.Text);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("viewslot.aspx");
        }
    }
}