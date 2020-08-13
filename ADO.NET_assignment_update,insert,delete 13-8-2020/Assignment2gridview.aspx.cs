using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplicationAssignment2
{
    public partial class Assignment2gridview : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-OFLL6H1;Initial Catalog=JulDotNetBatch;Integrated Security=True");
        SqlCommand cmd;
        SqlDataReader dr;
        DataTable dt;
        public void ShowGrid()
        {
            conn.Open();
            cmd = new SqlCommand("select * from Employee2", conn);
            dr = cmd.ExecuteReader();
            dt = new DataTable();
            dt.Load(dr);
            GridView1.DataSource = dt;

            GridView1.DataBind();


            dr.Close();
            conn.Close();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowGrid();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            conn.Open();
            cmd = new SqlCommand("insert_emp", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@empname", SqlDbType.VarChar, 20).Value = txtename.Text;
            cmd.Parameters.Add("@empsal", SqlDbType.Float).Value = Convert.ToSingle(txtesal.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            ShowGrid();
        }

        protected void btnInsertQuotes_Click(object sender, EventArgs e)
        {
            conn.Open();
           
            cmd = new SqlCommand("insert into Employee2(empName,empSal) values('" + txtename.Text + "'," + txtesal.Text + ")", conn);
            int x = cmd.ExecuteNonQuery();
            conn.Close();
            ShowGrid();
        }

        protected void btnInsertParams_Click(object sender, EventArgs e)
        {
            conn.Open();
            cmd = new SqlCommand("insert into employee2(empname,empsal) values (@empname,@empsal)", conn);
           // cmd.Parameters.Add("@empid", SqlDbType.Int).Value = Convert.ToInt32(txtEmpId.Text);
            cmd.Parameters.Add("@empname", SqlDbType.VarChar, 20).Value = txtename.Text;
            cmd.Parameters.Add("@empsal", SqlDbType.Float).Value = Convert.ToSingle(txtesal.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            ShowGrid();
        }

        protected void btnUpdateQuotes_Click(object sender, EventArgs e)
        {
            conn.Open();
            cmd = new SqlCommand("update employee2 set empname='" + txtename.Text + "',empsal='" + txtesal.Text + "'where empid='" + txteid.Text + "' ", conn);

            if (cmd.ExecuteNonQuery() > 0)
            {
                Response.Write("alert(one row updated)");
            }
            conn.Close();
            ShowGrid();
        }

        protected void btnUpdateParams_Click(object sender, EventArgs e)
        {
            conn.Open();
            cmd = new SqlCommand("update employee2 set EmpName=@empname,EmpSal=@empsal where empId=@empid", conn);
            cmd.Parameters.Add("@empid", SqlDbType.Int).Value = Convert.ToInt32(txteid.Text);
            cmd.Parameters.Add("@empname", SqlDbType.VarChar, 20).Value = txtename.Text;
            cmd.Parameters.Add("@empsal", SqlDbType.Float).Value = Convert.ToSingle(txtesal.Text);
            if (cmd.ExecuteNonQuery() > 0)
            {
                Response.Write("alert(one row updated)");
            }
            conn.Close();
            ShowGrid();
        }

        protected void btnUpdateSp_Click(object sender, EventArgs e)
        {
            conn.Open();
            cmd = new SqlCommand("update_emp", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@empid", SqlDbType.Int).Value = Convert.ToInt32(txteid.Text);
            cmd.Parameters.Add("@empname", SqlDbType.VarChar, 20).Value = txtename.Text;
            cmd.Parameters.Add("@empsal", SqlDbType.Float).Value = Convert.ToSingle(txtesal.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            ShowGrid();

        }

        protected void btnDeleteParams_Click(object sender, EventArgs e)
        {
            conn.Open();
            cmd = new SqlCommand("delete from employee2  where empid=@empid", conn);
            cmd.Parameters.Add("@empid", SqlDbType.Int).Value = Convert.ToInt32(txteid.Text);
           
            if (cmd.ExecuteNonQuery() > 0)
            {
                Response.Write("alert(one row updated)");
            }
            conn.Close();
            ShowGrid();
        }

        protected void btnDeleteSp_Click(object sender, EventArgs e)
        {

            conn.Open();
            cmd = new SqlCommand("delete_emp", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@empid", SqlDbType.Int).Value = Convert.ToInt32(txteid.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            ShowGrid();
        }

        protected void btnDeleteQuotes_Click(object sender, EventArgs e)
        {
            conn.Open();

            cmd = new SqlCommand("delete Employee2 where empid= '"+txteid.Text + "' ", conn);
           
            int x = cmd.ExecuteNonQuery();
            conn.Close();
            ShowGrid();
        }
    }
}