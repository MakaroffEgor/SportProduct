using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml.Linq;

namespace SportProduct.UserControls
{
    public partial class UsCtrlInfoProduct : UserControl
    {
        public event EventHandler ClickUserControl;

        private void pnlMainBackround_MouseClick(object sender, MouseEventArgs e)
        {
            pnlMainBackround.BackColor = Color.Green;
            ClickUserControl?.Invoke(this, e);
        }

        public UsCtrlInfoProduct()
        {
            InitializeComponent();
        }

        private void UsCtrlInfoProduct_Load(object sender, EventArgs e)
        {

        }

        

        #region PropertyUsCtrl

        private string _nameProduct;
        private string _inoProduct;
        private string _creater;
        private string _price;
        private string _photoProduct;
        private int _sale;

        public string NameProduct
        {
            get { return _nameProduct; }
            set { _nameProduct = value; lblNameProduct.Text = value; }
        }

        public string InoProduct
        {
            get { return _inoProduct; }
            set { _inoProduct = value; lblInoProduct.Text = value; }
        }

        public string Creater
        {
            get { return _creater; }
            set { _creater = value; lblCreater.Text = value; }
        }

        public string Price
        {
            get { return _price; }
            set { _price = value; lblPrice.Text = value; }
        }

        public string PhotoProduct
        {
            get { return _photoProduct; }
            set
            {
                _photoProduct = value;
                if (_photoProduct != "")
                {
                    string folderApp = Environment.CurrentDirectory;
                    string fullFolderApp = Path.Combine(folderApp, "PhotoProduct", _photoProduct );
                    PicBxPhotoProduct.Image = Image.FromFile(fullFolderApp);
                }
                else
                {
                    string folderApp = Environment.CurrentDirectory;
                    string fullFolderApp = Path.Combine(folderApp, "PhotoProduct", "picture.png");
                    PicBxPhotoProduct.Image = Image.FromFile(fullFolderApp);
                }
            }
        }

        public int Sale
        {
            get { return _sale; }
            set 
            { 
                _sale = value; lblSale.Text = value.ToString(); 
                if (value >= 15)
                {
                    lblSale.BackColor = Color.Green;
                }
            }
        }


        #endregion

        private void pnlMainBackround_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
