namespace SportProduct
{
    partial class AutorizationFrm
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

        #region Код, автоматически созданный конструктором форм Windows

        /// <summary>
        /// Требуемый метод для поддержки конструктора — не изменяйте 
        /// содержимое этого метода с помощью редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(AutorizationFrm));
            this.lbllogin = new System.Windows.Forms.Label();
            this.txtBxLogin = new System.Windows.Forms.TextBox();
            this.btnJoinAcc = new System.Windows.Forms.Button();
            this.pnlBackround = new System.Windows.Forms.Panel();
            this.pnlButton = new System.Windows.Forms.Panel();
            this.btnGouest = new System.Windows.Forms.Button();
            this.pnlPass = new System.Windows.Forms.Panel();
            this.lblPass = new System.Windows.Forms.Label();
            this.txtBxPass = new System.Windows.Forms.TextBox();
            this.pnlLogin = new System.Windows.Forms.Panel();
            this.pnlBlockGetData = new System.Windows.Forms.Panel();
            this.lblTimeInfo = new System.Windows.Forms.Label();
            this.pnlBackround.SuspendLayout();
            this.pnlButton.SuspendLayout();
            this.pnlPass.SuspendLayout();
            this.pnlLogin.SuspendLayout();
            this.pnlBlockGetData.SuspendLayout();
            this.SuspendLayout();
            // 
            // lbllogin
            // 
            this.lbllogin.AutoSize = true;
            this.lbllogin.Location = new System.Drawing.Point(20, 6);
            this.lbllogin.Name = "lbllogin";
            this.lbllogin.Size = new System.Drawing.Size(38, 13);
            this.lbllogin.TabIndex = 0;
            this.lbllogin.Text = "Логин";
            // 
            // txtBxLogin
            // 
            this.txtBxLogin.Location = new System.Drawing.Point(73, 3);
            this.txtBxLogin.Name = "txtBxLogin";
            this.txtBxLogin.Size = new System.Drawing.Size(100, 20);
            this.txtBxLogin.TabIndex = 1;
            // 
            // btnJoinAcc
            // 
            this.btnJoinAcc.Location = new System.Drawing.Point(16, 2);
            this.btnJoinAcc.Name = "btnJoinAcc";
            this.btnJoinAcc.Size = new System.Drawing.Size(75, 23);
            this.btnJoinAcc.TabIndex = 2;
            this.btnJoinAcc.Text = "Войти";
            this.btnJoinAcc.UseVisualStyleBackColor = true;
            this.btnJoinAcc.Click += new System.EventHandler(this.btnJoinAcc_Click);
            // 
            // pnlBackround
            // 
            this.pnlBackround.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(118)))), ((int)(((byte)(227)))), ((int)(((byte)(131)))));
            this.pnlBackround.Controls.Add(this.pnlButton);
            this.pnlBackround.Controls.Add(this.pnlPass);
            this.pnlBackround.Controls.Add(this.pnlLogin);
            this.pnlBackround.Location = new System.Drawing.Point(11, 1);
            this.pnlBackround.Name = "pnlBackround";
            this.pnlBackround.Size = new System.Drawing.Size(256, 200);
            this.pnlBackround.TabIndex = 3;
            // 
            // pnlButton
            // 
            this.pnlButton.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(73)))), ((int)(((byte)(140)))), ((int)(((byte)(81)))));
            this.pnlButton.Controls.Add(this.btnJoinAcc);
            this.pnlButton.Controls.Add(this.btnGouest);
            this.pnlButton.Location = new System.Drawing.Point(14, 125);
            this.pnlButton.Name = "pnlButton";
            this.pnlButton.Size = new System.Drawing.Size(227, 29);
            this.pnlButton.TabIndex = 6;
            // 
            // btnGouest
            // 
            this.btnGouest.Location = new System.Drawing.Point(126, 2);
            this.btnGouest.Name = "btnGouest";
            this.btnGouest.Size = new System.Drawing.Size(75, 23);
            this.btnGouest.TabIndex = 2;
            this.btnGouest.Text = "Гость";
            this.btnGouest.UseVisualStyleBackColor = true;
            this.btnGouest.Click += new System.EventHandler(this.btnGouest_Click);
            // 
            // pnlPass
            // 
            this.pnlPass.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(73)))), ((int)(((byte)(140)))), ((int)(((byte)(81)))));
            this.pnlPass.Controls.Add(this.lblPass);
            this.pnlPass.Controls.Add(this.txtBxPass);
            this.pnlPass.Location = new System.Drawing.Point(14, 78);
            this.pnlPass.Name = "pnlPass";
            this.pnlPass.Size = new System.Drawing.Size(227, 29);
            this.pnlPass.TabIndex = 6;
            // 
            // lblPass
            // 
            this.lblPass.AutoSize = true;
            this.lblPass.Location = new System.Drawing.Point(13, 8);
            this.lblPass.Name = "lblPass";
            this.lblPass.Size = new System.Drawing.Size(45, 13);
            this.lblPass.TabIndex = 0;
            this.lblPass.Text = "Пароль";
            // 
            // txtBxPass
            // 
            this.txtBxPass.Location = new System.Drawing.Point(73, 6);
            this.txtBxPass.Name = "txtBxPass";
            this.txtBxPass.Size = new System.Drawing.Size(100, 20);
            this.txtBxPass.TabIndex = 1;
            // 
            // pnlLogin
            // 
            this.pnlLogin.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(73)))), ((int)(((byte)(140)))), ((int)(((byte)(81)))));
            this.pnlLogin.Controls.Add(this.txtBxLogin);
            this.pnlLogin.Controls.Add(this.lbllogin);
            this.pnlLogin.Location = new System.Drawing.Point(14, 30);
            this.pnlLogin.Name = "pnlLogin";
            this.pnlLogin.Size = new System.Drawing.Size(227, 29);
            this.pnlLogin.TabIndex = 5;
            // 
            // pnlBlockGetData
            // 
            this.pnlBlockGetData.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(73)))), ((int)(((byte)(140)))), ((int)(((byte)(81)))));
            this.pnlBlockGetData.Controls.Add(this.lblTimeInfo);
            this.pnlBlockGetData.Location = new System.Drawing.Point(12, 1);
            this.pnlBlockGetData.Name = "pnlBlockGetData";
            this.pnlBlockGetData.Size = new System.Drawing.Size(255, 200);
            this.pnlBlockGetData.TabIndex = 4;
            // 
            // lblTimeInfo
            // 
            this.lblTimeInfo.AutoSize = true;
            this.lblTimeInfo.Location = new System.Drawing.Point(58, 62);
            this.lblTimeInfo.Name = "lblTimeInfo";
            this.lblTimeInfo.Size = new System.Drawing.Size(123, 13);
            this.lblTimeInfo.TabIndex = 0;
            this.lblTimeInfo.Text = "10 секунд блокировка!";
            // 
            // AutorizationFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(280, 203);
            this.Controls.Add(this.pnlBackround);
            this.Controls.Add(this.pnlBlockGetData);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "AutorizationFrm";
            this.Text = "Авторизация";
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.AutorizationFrm_FormClosed);
            this.Load += new System.EventHandler(this.Form1_Load);
            this.pnlBackround.ResumeLayout(false);
            this.pnlButton.ResumeLayout(false);
            this.pnlPass.ResumeLayout(false);
            this.pnlPass.PerformLayout();
            this.pnlLogin.ResumeLayout(false);
            this.pnlLogin.PerformLayout();
            this.pnlBlockGetData.ResumeLayout(false);
            this.pnlBlockGetData.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label lbllogin;
        private System.Windows.Forms.TextBox txtBxLogin;
        private System.Windows.Forms.Button btnJoinAcc;
        private System.Windows.Forms.Panel pnlBackround;
        private System.Windows.Forms.TextBox txtBxPass;
        private System.Windows.Forms.Label lblPass;
        private System.Windows.Forms.Button btnGouest;
        private System.Windows.Forms.Panel pnlBlockGetData;
        private System.Windows.Forms.Label lblTimeInfo;
        private System.Windows.Forms.Panel pnlButton;
        private System.Windows.Forms.Panel pnlPass;
        private System.Windows.Forms.Panel pnlLogin;
    }
}

