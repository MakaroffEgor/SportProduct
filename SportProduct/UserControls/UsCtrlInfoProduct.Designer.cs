namespace SportProduct.UserControls
{
    partial class UsCtrlInfoProduct
    {
        /// <summary> 
        /// Обязательная переменная конструктора.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Освободить все используемые ресурсы.
        /// </summary>
        /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Код, автоматически созданный конструктором компонентов

        /// <summary> 
        /// Требуемый метод для поддержки конструктора — не изменяйте 
        /// содержимое этого метода с помощью редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            this.PicBxPhotoProduct = new System.Windows.Forms.PictureBox();
            this.pnlMainInfo = new System.Windows.Forms.Panel();
            this.lblSaleName = new System.Windows.Forms.Label();
            this.lblPriceName = new System.Windows.Forms.Label();
            this.lblCreaterName = new System.Windows.Forms.Label();
            this.lblInoProductName = new System.Windows.Forms.Label();
            this.lblNameProductName = new System.Windows.Forms.Label();
            this.lblSale = new System.Windows.Forms.Label();
            this.lblPrice = new System.Windows.Forms.Label();
            this.lblCreater = new System.Windows.Forms.Label();
            this.lblInoProduct = new System.Windows.Forms.Label();
            this.lblNameProduct = new System.Windows.Forms.Label();
            this.pnlMainBackround = new System.Windows.Forms.Panel();
            ((System.ComponentModel.ISupportInitialize)(this.PicBxPhotoProduct)).BeginInit();
            this.pnlMainInfo.SuspendLayout();
            this.pnlMainBackround.SuspendLayout();
            this.SuspendLayout();
            // 
            // PicBxPhotoProduct
            // 
            this.PicBxPhotoProduct.Location = new System.Drawing.Point(8, 8);
            this.PicBxPhotoProduct.Name = "PicBxPhotoProduct";
            this.PicBxPhotoProduct.Size = new System.Drawing.Size(185, 121);
            this.PicBxPhotoProduct.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.PicBxPhotoProduct.TabIndex = 0;
            this.PicBxPhotoProduct.TabStop = false;
            this.PicBxPhotoProduct.MouseClick += new System.Windows.Forms.MouseEventHandler(this.pnlMainBackround_MouseClick);
            // 
            // pnlMainInfo
            // 
            this.pnlMainInfo.BackColor = System.Drawing.Color.White;
            this.pnlMainInfo.Controls.Add(this.lblSaleName);
            this.pnlMainInfo.Controls.Add(this.lblPriceName);
            this.pnlMainInfo.Controls.Add(this.lblCreaterName);
            this.pnlMainInfo.Controls.Add(this.lblInoProductName);
            this.pnlMainInfo.Controls.Add(this.lblNameProductName);
            this.pnlMainInfo.Controls.Add(this.lblSale);
            this.pnlMainInfo.Controls.Add(this.lblPrice);
            this.pnlMainInfo.Controls.Add(this.lblCreater);
            this.pnlMainInfo.Controls.Add(this.lblInoProduct);
            this.pnlMainInfo.Controls.Add(this.lblNameProduct);
            this.pnlMainInfo.Location = new System.Drawing.Point(199, 5);
            this.pnlMainInfo.Name = "pnlMainInfo";
            this.pnlMainInfo.Size = new System.Drawing.Size(326, 124);
            this.pnlMainInfo.TabIndex = 1;
            this.pnlMainInfo.MouseClick += new System.Windows.Forms.MouseEventHandler(this.pnlMainBackround_MouseClick);
            // 
            // lblSaleName
            // 
            this.lblSaleName.Location = new System.Drawing.Point(3, 97);
            this.lblSaleName.Name = "lblSaleName";
            this.lblSaleName.Size = new System.Drawing.Size(71, 22);
            this.lblSaleName.TabIndex = 1;
            this.lblSaleName.Text = "Скидка:";
            this.lblSaleName.MouseClick += new System.Windows.Forms.MouseEventHandler(this.pnlMainBackround_MouseClick);
            // 
            // lblPriceName
            // 
            this.lblPriceName.Location = new System.Drawing.Point(3, 75);
            this.lblPriceName.Name = "lblPriceName";
            this.lblPriceName.Size = new System.Drawing.Size(71, 22);
            this.lblPriceName.TabIndex = 1;
            this.lblPriceName.Text = "Цена";
            this.lblPriceName.MouseClick += new System.Windows.Forms.MouseEventHandler(this.pnlMainBackround_MouseClick);
            // 
            // lblCreaterName
            // 
            this.lblCreaterName.Location = new System.Drawing.Point(3, 53);
            this.lblCreaterName.Name = "lblCreaterName";
            this.lblCreaterName.Size = new System.Drawing.Size(92, 22);
            this.lblCreaterName.TabIndex = 1;
            this.lblCreaterName.Text = "Производитель";
            this.lblCreaterName.MouseClick += new System.Windows.Forms.MouseEventHandler(this.pnlMainBackround_MouseClick);
            // 
            // lblInoProductName
            // 
            this.lblInoProductName.Location = new System.Drawing.Point(3, 31);
            this.lblInoProductName.Name = "lblInoProductName";
            this.lblInoProductName.Size = new System.Drawing.Size(79, 22);
            this.lblInoProductName.TabIndex = 1;
            this.lblInoProductName.Text = "Информация";
            this.lblInoProductName.MouseClick += new System.Windows.Forms.MouseEventHandler(this.pnlMainBackround_MouseClick);
            // 
            // lblNameProductName
            // 
            this.lblNameProductName.Location = new System.Drawing.Point(3, 9);
            this.lblNameProductName.Name = "lblNameProductName";
            this.lblNameProductName.Size = new System.Drawing.Size(71, 22);
            this.lblNameProductName.TabIndex = 1;
            this.lblNameProductName.Text = "Название";
            this.lblNameProductName.MouseClick += new System.Windows.Forms.MouseEventHandler(this.pnlMainBackround_MouseClick);
            // 
            // lblSale
            // 
            this.lblSale.Location = new System.Drawing.Point(97, 97);
            this.lblSale.Name = "lblSale";
            this.lblSale.Size = new System.Drawing.Size(226, 22);
            this.lblSale.TabIndex = 0;
            this.lblSale.Text = "label1";
            this.lblSale.MouseClick += new System.Windows.Forms.MouseEventHandler(this.pnlMainBackround_MouseClick);
            // 
            // lblPrice
            // 
            this.lblPrice.Location = new System.Drawing.Point(97, 75);
            this.lblPrice.Name = "lblPrice";
            this.lblPrice.Size = new System.Drawing.Size(226, 22);
            this.lblPrice.TabIndex = 0;
            this.lblPrice.Text = "label1";
            this.lblPrice.MouseClick += new System.Windows.Forms.MouseEventHandler(this.pnlMainBackround_MouseClick);
            // 
            // lblCreater
            // 
            this.lblCreater.Location = new System.Drawing.Point(97, 53);
            this.lblCreater.Name = "lblCreater";
            this.lblCreater.Size = new System.Drawing.Size(226, 22);
            this.lblCreater.TabIndex = 0;
            this.lblCreater.Text = "label1";
            this.lblCreater.MouseClick += new System.Windows.Forms.MouseEventHandler(this.pnlMainBackround_MouseClick);
            // 
            // lblInoProduct
            // 
            this.lblInoProduct.Location = new System.Drawing.Point(97, 31);
            this.lblInoProduct.Name = "lblInoProduct";
            this.lblInoProduct.Size = new System.Drawing.Size(223, 22);
            this.lblInoProduct.TabIndex = 0;
            this.lblInoProduct.Text = "label1";
            this.lblInoProduct.MouseClick += new System.Windows.Forms.MouseEventHandler(this.pnlMainBackround_MouseClick);
            // 
            // lblNameProduct
            // 
            this.lblNameProduct.Location = new System.Drawing.Point(97, 9);
            this.lblNameProduct.Name = "lblNameProduct";
            this.lblNameProduct.Size = new System.Drawing.Size(226, 22);
            this.lblNameProduct.TabIndex = 0;
            this.lblNameProduct.Text = "label1";
            this.lblNameProduct.MouseClick += new System.Windows.Forms.MouseEventHandler(this.pnlMainBackround_MouseClick);
            // 
            // pnlMainBackround
            // 
            this.pnlMainBackround.BackColor = System.Drawing.Color.Teal;
            this.pnlMainBackround.Controls.Add(this.PicBxPhotoProduct);
            this.pnlMainBackround.Controls.Add(this.pnlMainInfo);
            this.pnlMainBackround.Location = new System.Drawing.Point(0, 0);
            this.pnlMainBackround.Name = "pnlMainBackround";
            this.pnlMainBackround.Size = new System.Drawing.Size(539, 135);
            this.pnlMainBackround.TabIndex = 2;
            this.pnlMainBackround.Paint += new System.Windows.Forms.PaintEventHandler(this.pnlMainBackround_Paint);
            this.pnlMainBackround.MouseClick += new System.Windows.Forms.MouseEventHandler(this.pnlMainBackround_MouseClick);
            // 
            // UsCtrlInfoProduct
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.Controls.Add(this.pnlMainBackround);
            this.Name = "UsCtrlInfoProduct";
            this.Size = new System.Drawing.Size(545, 146);
            this.Load += new System.EventHandler(this.UsCtrlInfoProduct_Load);
            ((System.ComponentModel.ISupportInitialize)(this.PicBxPhotoProduct)).EndInit();
            this.pnlMainInfo.ResumeLayout(false);
            this.pnlMainBackround.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.PictureBox PicBxPhotoProduct;
        private System.Windows.Forms.Panel pnlMainInfo;
        private System.Windows.Forms.Label lblPrice;
        private System.Windows.Forms.Label lblCreater;
        private System.Windows.Forms.Label lblInoProduct;
        private System.Windows.Forms.Label lblNameProduct;
        private System.Windows.Forms.Panel pnlMainBackround;
        private System.Windows.Forms.Label lblNameProductName;
        private System.Windows.Forms.Label lblPriceName;
        private System.Windows.Forms.Label lblCreaterName;
        private System.Windows.Forms.Label lblInoProductName;
        private System.Windows.Forms.Label lblSaleName;
        private System.Windows.Forms.Label lblSale;
    }
}
