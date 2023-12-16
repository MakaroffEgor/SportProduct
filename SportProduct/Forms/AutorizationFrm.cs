using SportProduct.DataBase;
using SportProduct.Forms;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SportProduct
{
    public partial class AutorizationFrm : Form
    {
        public AutorizationFrm()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        DB_OOO_Sportivnyue_Tovaryu1Entities DBcon = new DB_OOO_Sportivnyue_Tovaryu1Entities();
        public int tryCount = 1;

        private void btnJoinAcc_Click(object sender, EventArgs e)
        {
            foreach (var user in DBcon.Users)
            {
                if (txtBxLogin.Text == user.Mail && txtBxPass.Text == user.Password)
                {
                    if (user.RoleId == 1)
                    {
                        new ProductShowFrm(user.Name).Show();
                        this.Hide();
                        return;
                    }

                }
            }
            MessageBox.Show("Неверные данные!");
            --tryCount;
            pnlBackround.Visible = false;
            ShowBlockGetData();
        }

        public async void ShowBlockGetData()
        {
            if (tryCount == 0)
            {
                while (true)
                {
                    await Task.Delay(10000);
                    pnlBackround.Visible = true;
                    tryCount = 1;
                    break;
                }
            }
        }

        private void btnGouest_Click(object sender, EventArgs e)
        {
            new ProductShowFrm("Гость").Show();
            this.Hide();
        }

        private void AutorizationFrm_FormClosed(object sender, FormClosedEventArgs e)
        {
            Application.Exit();
        }

        private void backgroundWorker1_DoWork(object sender, DoWorkEventArgs e)
        {

        }
    }
}
