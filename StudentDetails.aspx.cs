using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using  System.Data.SqlClient;
using System.Data;

namespace Eclerx.MinaksheequesNo1
{






    public partial class StudentDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(@"Data Source=ECXLC5503\SQLEXPRESS01;usinIntial Catalog=hr;Initial Security=True"))
            {
                using (SqlCommand cmd = new SqlCommand("usp_AddNewStudent", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@StudentId", TxtStudentId.Text);
                    cmd.Parameters.AddWithValue("@UserName", TxtUserName.Text);
                    cmd.Parameters.AddWithValue("@UserPassword", TxtUserPasswords.Text);
                    cmd.Parameters.AddWithValue("@ConfirmPassword", TxtConfirmPassword.Text);
                    cmd.Parameters.AddWithValue("@AccountCreationDate", TxtAccountCreationDate.ToString());
                }





            }


        }

        protected void BtnAddStudent_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(@"Data Source=ECXLC5503\SQLEXPRESS01;usinIntial Catalog=hr;Initial Security=True"))
            {
                using (SqlCommand cmd = new SqlCommand("usp_AddNewStudent", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@StudentId", TxtStudentId.Text);
                    cmd.Parameters.AddWithValue("@UserName", TxtUserName.Text);
                    cmd.Parameters.AddWithValue("@UserPassword", TxtUserPasswords.Text);
                    cmd.Parameters.AddWithValue("@ConfirmPassword", TxtConfirmPassword.Text);
                    cmd.Parameters.AddWithValue("@AccountCreationDate", TxtAccountCreationDate.ToString());
                    if(con.State==ConnectionState.Closed)
                    {
                        con.Open();
                        cmd.ExecuteNonQuery();
                    }
                    
                }
            }
        }

        protected void LbtnSignIn_Click(object sender, EventArgs e)
        {
            LbtnSignIn.Text = "sign in";
        }
    }
}


        
    
