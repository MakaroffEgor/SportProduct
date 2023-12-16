namespace SportProduct.Forms
{
    partial class ProductShowFrm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ProductShowFrm));
            this.FLPShowProductList = new System.Windows.Forms.FlowLayoutPanel();
            this.pnlButton = new System.Windows.Forms.Panel();
            this.lblNameUserDB = new System.Windows.Forms.Label();
            this.btnBackForm = new System.Windows.Forms.Button();
            this.pnlSearch = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.txtBxSearch = new System.Windows.Forms.TextBox();
            this.panel3 = new System.Windows.Forms.Panel();
            this.btnDelete = new System.Windows.Forms.Button();
            this.panel1 = new System.Windows.Forms.Panel();
            this.comBoxSale = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.pnlButton.SuspendLayout();
            this.pnlSearch.SuspendLayout();
            this.panel3.SuspendLayout();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // FLPShowProductList
            // 
            this.FLPShowProductList.AutoScroll = true;
            this.FLPShowProductList.Location = new System.Drawing.Point(12, 12);
            this.FLPShowProductList.Name = "FLPShowProductList";
            this.FLPShowProductList.Size = new System.Drawing.Size(688, 378);
            this.FLPShowProductList.TabIndex = 0;
            // 
            // pnlButton
            // 
            this.pnlButton.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(73)))), ((int)(((byte)(140)))), ((int)(((byte)(81)))));
            this.pnlButton.Controls.Add(this.lblNameUserDB);
            this.pnlButton.Controls.Add(this.btnBackForm);
            this.pnlButton.Location = new System.Drawing.Point(706, 361);
            this.pnlButton.Name = "pnlButton";
            this.pnlButton.Size = new System.Drawing.Size(227, 29);
            this.pnlButton.TabIndex = 7;
            // 
            // lblNameUserDB
            // 
            this.lblNameUserDB.AutoSize = true;
            this.lblNameUserDB.Location = new System.Drawing.Point(132, 8);
            this.lblNameUserDB.Name = "lblNameUserDB";
            this.lblNameUserDB.Size = new System.Drawing.Size(16, 13);
            this.lblNameUserDB.TabIndex = 8;
            this.lblNameUserDB.Text = "---";
            // 
            // btnBackForm
            // 
            this.btnBackForm.Location = new System.Drawing.Point(19, 3);
            this.btnBackForm.Name = "btnBackForm";
            this.btnBackForm.Size = new System.Drawing.Size(75, 23);
            this.btnBackForm.TabIndex = 2;
            this.btnBackForm.Text = "Назад";
            this.btnBackForm.UseVisualStyleBackColor = true;
            this.btnBackForm.Click += new System.EventHandler(this.btnBackForm_Click);
            // 
            // pnlSearch
            // 
            this.pnlSearch.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(73)))), ((int)(((byte)(140)))), ((int)(((byte)(81)))));
            this.pnlSearch.Controls.Add(this.label1);
            this.pnlSearch.Controls.Add(this.txtBxSearch);
            this.pnlSearch.Location = new System.Drawing.Point(706, 326);
            this.pnlSearch.Name = "pnlSearch";
            this.pnlSearch.Size = new System.Drawing.Size(227, 29);
            this.pnlSearch.TabIndex = 7;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(10, 6);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(59, 13);
            this.label1.TabIndex = 9;
            this.label1.Text = "По имени:";
            // 
            // txtBxSearch
            // 
            this.txtBxSearch.Location = new System.Drawing.Point(75, 3);
            this.txtBxSearch.Name = "txtBxSearch";
            this.txtBxSearch.Size = new System.Drawing.Size(136, 20);
            this.txtBxSearch.TabIndex = 9;
            this.txtBxSearch.TextChanged += new System.EventHandler(this.txtBxSearch_TextChanged);
            // 
            // panel3
            // 
            this.panel3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(73)))), ((int)(((byte)(140)))), ((int)(((byte)(81)))));
            this.panel3.Controls.Add(this.btnDelete);
            this.panel3.Location = new System.Drawing.Point(706, 258);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(227, 29);
            this.panel3.TabIndex = 7;
            // 
            // btnDelete
            // 
            this.btnDelete.Location = new System.Drawing.Point(91, 3);
            this.btnDelete.Name = "btnDelete";
            this.btnDelete.Size = new System.Drawing.Size(75, 23);
            this.btnDelete.TabIndex = 2;
            this.btnDelete.Text = "удалить";
            this.btnDelete.UseVisualStyleBackColor = true;
            this.btnDelete.Click += new System.EventHandler(this.btnDelete_Click);
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(73)))), ((int)(((byte)(140)))), ((int)(((byte)(81)))));
            this.panel1.Controls.Add(this.comBoxSale);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Location = new System.Drawing.Point(706, 293);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(227, 29);
            this.panel1.TabIndex = 7;
            // 
            // comBoxSale
            // 
            this.comBoxSale.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comBoxSale.FormattingEnabled = true;
            this.comBoxSale.Items.AddRange(new object[] {
            " 0-9,99%",
            "10-14,99%",
            "15% и более"});
            this.comBoxSale.Location = new System.Drawing.Point(75, 3);
            this.comBoxSale.Name = "comBoxSale";
            this.comBoxSale.Size = new System.Drawing.Size(136, 21);
            this.comBoxSale.TabIndex = 8;
            this.comBoxSale.SelectedIndexChanged += new System.EventHandler(this.comBoxSale_SelectedIndexChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(10, 6);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(63, 13);
            this.label2.TabIndex = 9;
            this.label2.Text = "По скидке:";
            // 
            // ProductShowFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(953, 402);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.pnlSearch);
            this.Controls.Add(this.pnlButton);
            this.Controls.Add(this.FLPShowProductList);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximumSize = new System.Drawing.Size(969, 441);
            this.MinimumSize = new System.Drawing.Size(969, 441);
            this.Name = "ProductShowFrm";
            this.Text = "Список Товаров";
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.ProductShowFrm_FormClosed);
            this.Load += new System.EventHandler(this.ProductShowFrm_Load);
            this.pnlButton.ResumeLayout(false);
            this.pnlButton.PerformLayout();
            this.pnlSearch.ResumeLayout(false);
            this.pnlSearch.PerformLayout();
            this.panel3.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.FlowLayoutPanel FLPShowProductList;
        private System.Windows.Forms.Panel pnlButton;
        private System.Windows.Forms.Button btnBackForm;
        private System.Windows.Forms.Label lblNameUserDB;
        private System.Windows.Forms.Panel pnlSearch;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Button btnDelete;
        private System.Windows.Forms.TextBox txtBxSearch;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.ComboBox comBoxSale;
        private System.Windows.Forms.Label label2;
    }
}