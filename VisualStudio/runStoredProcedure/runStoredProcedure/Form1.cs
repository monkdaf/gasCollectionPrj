using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using Microsoft.SqlServer.Server;

namespace runStoredProcedure
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            using (var sqlConn = new SqlConnection("Server=ASU-PC\\WINCC;Database=testVS;Trusted_Connection=True;"))
            {
                var sqlCmd = new SqlCommand("procVS", sqlConn);
                sqlCmd.CommandType = CommandType.StoredProcedure;

                sqlConn.Open();
                sqlCmd.ExecuteNonQuery();
            }
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            using (var sqlConn = new SqlConnection("Server=ASU-PC\\WINCC;Database=testVS;Trusted_Connection=True;"))
            {
                var sqlCmd = new SqlCommand("procVS", sqlConn);
                sqlCmd.CommandType = CommandType.StoredProcedure;

                sqlConn.Open();
                sqlCmd.ExecuteNonQuery();
            }

        }
    }
}
