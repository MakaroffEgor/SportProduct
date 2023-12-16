using SportProduct.DataBase;
using SportProduct.UserControls;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Entity;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SportProduct.Forms
{
    public partial class ProductShowFrm : Form
    {
        int idProduct;
        DB_OOO_Sportivnyue_Tovaryu1Entities DBcon = new DB_OOO_Sportivnyue_Tovaryu1Entities();
        public UsCtrlInfoProduct selectIndex;

        public ProductShowFrm(string name)
        {
            InitializeComponent();
            StartShowProduct();
            lblNameUserDB.Text = name;
        }

        private void ProductShowFrm_Load(object sender, EventArgs e)
        {

        }

        public void StartShowProduct() 
        {
            foreach (var product in DBcon.Products)
            {
                idProduct = product.id;
                UsCtrlInfoProduct usCtrlInfoProduct = new UsCtrlInfoProduct()
                {
                    NameProduct = product.Name,
                    InoProduct = product.InfoProduct,
                    Creater = product.NameCreater,
                    Price = product.Price.ToString(),
                    Sale = (int)product.SizeMaxSale,
                    PhotoProduct = product.Image.ToString(),
                };
                usCtrlInfoProduct.ClickUserControl += UsCtrlInfoProduct_Click;
                FLPShowProductList.Controls.Add(usCtrlInfoProduct);
            }
        }

        private void UsCtrlInfoProduct_Click(object sender, EventArgs e)
        {
            selectIndex = sender as UsCtrlInfoProduct;
            UsCtrlInfoProduct clickedUsCtrl = sender as UsCtrlInfoProduct;

            if (clickedUsCtrl != null)
            {
                // Сбросить цвет фона для всех элементов в FlowLayoutPanel
                foreach (UsCtrlInfoProduct usCtrl in FLPShowProductList.Controls)
                {
                    usCtrl.Unchoose();
                }

                // Выбрать текущий элемент
                clickedUsCtrl.Choose();

                // Далее ваш код обработки выбранного элемента
                selectIndex = clickedUsCtrl;
                // ...
            }
        }

        private void btnBackForm_Click(object sender, EventArgs e)
        {
            new AutorizationFrm().Show();
            this.Hide();
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            if (selectIndex != null)
            {
                DBcon.Products.Remove(DBcon.Products.Where(t => t.id == idProduct).First());
                DBcon.SaveChanges();

                FLPShowProductList.Controls.Remove(selectIndex);
                selectIndex.Dispose(); // Освобождаем ресурсы, связанные с InfoUser
                selectIndex = null; // Обнуляем ссылку, чтобы избежать утечек памяти
            }
        }

        private void txtBxSearch_TextChanged(object sender, EventArgs e)
        {
            string search = txtBxSearch.Text;
            var choiseProduct = DBcon.Products.Where(p => p.Name.StartsWith(search)).ToArray();
            FLPShowProductList.Controls.Clear();
            foreach (var product in choiseProduct)
            {
                idProduct = product.id;
                UsCtrlInfoProduct usCtrlInfoProduct = new UsCtrlInfoProduct()
                {
                    NameProduct = product.Name,
                    InoProduct = product.InfoProduct,
                    Creater = product.NameCreater,
                    Price = product.Price.ToString(),
                    Sale = (int)product.SizeMaxSale,
                    PhotoProduct = product.Image.ToString(),
                };

                idProduct = product.id;
                FLPShowProductList.Controls.Add(usCtrlInfoProduct);
                usCtrlInfoProduct.ClickUserControl += UsCtrlInfoProduct_Click;
            }
        }

        private void ProductShowFrm_FormClosed(object sender, FormClosedEventArgs e)
        {
            Application.Exit();
        }

        private void comBoxSale_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (comBoxSale.SelectedIndex == 0)
            {
                FilterSale(0, 9.99);
            }
            else if (comBoxSale.SelectedIndex == 1)
            {
                FilterSale(10,14.99);
            }
            else if (comBoxSale.SelectedIndex == 2)
            {
                FilterSale(15, 100);
            }
        }

        public void FilterSale(double sale2, double sale)
        {
            FLPShowProductList.Controls.Clear();
            
                foreach (var product in DBcon.Products)
                {
                    if (product.SizeMaxSale <= sale && product.SizeMaxSale >= sale2)
                    {
                        idProduct = product.id;
                        UsCtrlInfoProduct usCtrlInfoProduct = new UsCtrlInfoProduct()
                        {
                            NameProduct = product.Name,
                            InoProduct = product.InfoProduct,
                            Creater = product.NameCreater,
                            Price = product.Price.ToString(),
                            Sale = (int)product.SizeMaxSale,
                            PhotoProduct = product.Image,
                        };
                        usCtrlInfoProduct.ClickUserControl += UsCtrlInfoProduct_Click;
                        FLPShowProductList.Controls.Add(usCtrlInfoProduct);
                    }
                }
        }
    }
}
