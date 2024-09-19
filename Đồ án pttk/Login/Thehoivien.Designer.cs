namespace Login
{
    partial class Thehoivien
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            this.label4 = new System.Windows.Forms.Label();
            this.dtgv_Thedocgia = new System.Windows.Forms.DataGridView();
            this.btn_Giahanthe = new System.Windows.Forms.Button();
            this.btn_Capmoithe = new System.Windows.Forms.Button();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.txt_Mathedocgia = new System.Windows.Forms.TextBox();
            this.btn_Timkiem = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.txt_Madocgia = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.dtp_Ngayhethan = new System.Windows.Forms.DateTimePicker();
            this.label1 = new System.Windows.Forms.Label();
            this.dtp_Ngaycap = new System.Windows.Forms.DateTimePicker();
            ((System.ComponentModel.ISupportInitialize)(this.dtgv_Thedocgia)).BeginInit();
            this.groupBox2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(514, 20);
            this.label4.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(350, 26);
            this.label4.TabIndex = 14;
            this.label4.Text = "Danh sách các thẻ độc giả thư viện";
            // 
            // dtgv_Thedocgia
            // 
            this.dtgv_Thedocgia.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dtgv_Thedocgia.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.dtgv_Thedocgia.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dtgv_Thedocgia.DefaultCellStyle = dataGridViewCellStyle2;
            this.dtgv_Thedocgia.Location = new System.Drawing.Point(340, 59);
            this.dtgv_Thedocgia.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.dtgv_Thedocgia.Name = "dtgv_Thedocgia";
            this.dtgv_Thedocgia.RowHeadersWidth = 51;
            this.dtgv_Thedocgia.Size = new System.Drawing.Size(664, 565);
            this.dtgv_Thedocgia.TabIndex = 13;
            this.dtgv_Thedocgia.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dtgv_Thedocgia_CellContentClick);
            // 
            // btn_Giahanthe
            // 
            this.btn_Giahanthe.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_Giahanthe.Location = new System.Drawing.Point(190, 275);
            this.btn_Giahanthe.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.btn_Giahanthe.Name = "btn_Giahanthe";
            this.btn_Giahanthe.Size = new System.Drawing.Size(94, 41);
            this.btn_Giahanthe.TabIndex = 10;
            this.btn_Giahanthe.Text = "Gia hạn thẻ";
            this.btn_Giahanthe.UseVisualStyleBackColor = true;
            this.btn_Giahanthe.Click += new System.EventHandler(this.btn_Giahanthe_Click);
            // 
            // btn_Capmoithe
            // 
            this.btn_Capmoithe.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_Capmoithe.Location = new System.Drawing.Point(65, 275);
            this.btn_Capmoithe.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.btn_Capmoithe.Name = "btn_Capmoithe";
            this.btn_Capmoithe.Size = new System.Drawing.Size(94, 41);
            this.btn_Capmoithe.TabIndex = 12;
            this.btn_Capmoithe.Text = "Cấp mới thẻ";
            this.btn_Capmoithe.UseVisualStyleBackColor = true;
            this.btn_Capmoithe.Click += new System.EventHandler(this.btn_Capmoithe_Click);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.txt_Mathedocgia);
            this.groupBox2.Controls.Add(this.btn_Timkiem);
            this.groupBox2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox2.Location = new System.Drawing.Point(38, 379);
            this.groupBox2.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Padding = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.groupBox2.Size = new System.Drawing.Size(275, 162);
            this.groupBox2.TabIndex = 9;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Tìm kiếm";
            // 
            // txt_Mathedocgia
            // 
            this.txt_Mathedocgia.Location = new System.Drawing.Point(38, 55);
            this.txt_Mathedocgia.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.txt_Mathedocgia.Name = "txt_Mathedocgia";
            this.txt_Mathedocgia.Size = new System.Drawing.Size(208, 26);
            this.txt_Mathedocgia.TabIndex = 8;
            // 
            // btn_Timkiem
            // 
            this.btn_Timkiem.Location = new System.Drawing.Point(70, 98);
            this.btn_Timkiem.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.btn_Timkiem.Name = "btn_Timkiem";
            this.btn_Timkiem.Size = new System.Drawing.Size(132, 41);
            this.btn_Timkiem.TabIndex = 3;
            this.btn_Timkiem.Text = "Tìm kiếm";
            this.btn_Timkiem.UseVisualStyleBackColor = true;
            this.btn_Timkiem.Click += new System.EventHandler(this.btn_Timkiem_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.txt_Madocgia);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.dtp_Ngayhethan);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.dtp_Ngaycap);
            this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(18, 46);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.groupBox1.Size = new System.Drawing.Size(307, 192);
            this.groupBox1.TabIndex = 8;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Thông tin thẻ độc giả";
            // 
            // txt_Madocgia
            // 
            this.txt_Madocgia.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_Madocgia.Location = new System.Drawing.Point(105, 51);
            this.txt_Madocgia.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.txt_Madocgia.Name = "txt_Madocgia";
            this.txt_Madocgia.Size = new System.Drawing.Size(65, 24);
            this.txt_Madocgia.TabIndex = 7;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(14, 54);
            this.label3.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(81, 18);
            this.label3.TabIndex = 6;
            this.label3.Text = "Mã độc giả";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(14, 131);
            this.label2.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(94, 18);
            this.label2.TabIndex = 5;
            this.label2.Text = "Ngày hết hạn";
            // 
            // dtp_Ngayhethan
            // 
            this.dtp_Ngayhethan.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dtp_Ngayhethan.Location = new System.Drawing.Point(105, 131);
            this.dtp_Ngayhethan.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.dtp_Ngayhethan.Name = "dtp_Ngayhethan";
            this.dtp_Ngayhethan.Size = new System.Drawing.Size(182, 24);
            this.dtp_Ngayhethan.TabIndex = 4;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(16, 93);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(74, 18);
            this.label1.TabIndex = 5;
            this.label1.Text = "Ngày cấp ";
            // 
            // dtp_Ngaycap
            // 
            this.dtp_Ngaycap.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dtp_Ngaycap.Location = new System.Drawing.Point(105, 89);
            this.dtp_Ngaycap.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.dtp_Ngaycap.Name = "dtp_Ngaycap";
            this.dtp_Ngaycap.Size = new System.Drawing.Size(182, 24);
            this.dtp_Ngaycap.TabIndex = 4;
            // 
            // Thehoivien
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(1013, 635);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.dtgv_Thedocgia);
            this.Controls.Add(this.btn_Giahanthe);
            this.Controls.Add(this.btn_Capmoithe);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.Name = "Thehoivien";
            this.Text = "Thehoivien";
            this.Load += new System.EventHandler(this.Thehoivien_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dtgv_Thedocgia)).EndInit();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.DataGridView dtgv_Thedocgia;
        private System.Windows.Forms.Button btn_Giahanthe;
        private System.Windows.Forms.Button btn_Capmoithe;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.TextBox txt_Mathedocgia;
        private System.Windows.Forms.Button btn_Timkiem;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox txt_Madocgia;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DateTimePicker dtp_Ngayhethan;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DateTimePicker dtp_Ngaycap;
    }
}