
namespace FoodMeasureApp
{
    partial class NewFood
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.foodlabel = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.etelekGrid = new System.Windows.Forms.DataGridView();
            this.Elelmiszer = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Energia_KJ = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Energia_Kcal = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Feherje = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Zsir = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Szenhidrat = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Natrium = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Kalium = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Kalcium = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Magnezium = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Retinol = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.E_vitamin = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.label1 = new System.Windows.Forms.Label();
            this.FoodNameBox = new System.Windows.Forms.TextBox();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.etelekGrid)).BeginInit();
            this.SuspendLayout();
            // 
            // foodlabel
            // 
            this.foodlabel.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.foodlabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.foodlabel.Location = new System.Drawing.Point(0, 0);
            this.foodlabel.Name = "foodlabel";
            this.foodlabel.Size = new System.Drawing.Size(1060, 57);
            this.foodlabel.TabIndex = 0;
            this.foodlabel.Text = "Adding new food";
            this.foodlabel.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.Silver;
            this.panel1.Controls.Add(this.etelekGrid);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Controls.Add(this.FoodNameBox);
            this.panel1.Location = new System.Drawing.Point(0, 50);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1060, 550);
            this.panel1.TabIndex = 1;
            // 
            // etelekGrid
            // 
            this.etelekGrid.BackgroundColor = System.Drawing.Color.Silver;
            this.etelekGrid.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.etelekGrid.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.etelekGrid.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Elelmiszer,
            this.Energia_KJ,
            this.Energia_Kcal,
            this.Feherje,
            this.Zsir,
            this.Szenhidrat,
            this.Natrium,
            this.Kalium,
            this.Kalcium,
            this.Magnezium,
            this.Retinol,
            this.E_vitamin});
            this.etelekGrid.Location = new System.Drawing.Point(75, 132);
            this.etelekGrid.Name = "etelekGrid";
            this.etelekGrid.RowHeadersVisible = false;
            this.etelekGrid.Size = new System.Drawing.Size(901, 322);
            this.etelekGrid.TabIndex = 2;
            // 
            // Elelmiszer
            // 
            this.Elelmiszer.HeaderText = "Élelmiszer neve:";
            this.Elelmiszer.Name = "Elelmiszer";
            this.Elelmiszer.ReadOnly = true;
            this.Elelmiszer.Width = 120;
            // 
            // Energia_KJ
            // 
            this.Energia_KJ.HeaderText = "Energia(KJ)";
            this.Energia_KJ.Name = "Energia_KJ";
            this.Energia_KJ.ReadOnly = true;
            this.Energia_KJ.Width = 80;
            // 
            // Energia_Kcal
            // 
            this.Energia_Kcal.HeaderText = "Energia(KCAL)";
            this.Energia_Kcal.Name = "Energia_Kcal";
            this.Energia_Kcal.ReadOnly = true;
            // 
            // Feherje
            // 
            this.Feherje.HeaderText = "Fehérje:";
            this.Feherje.Name = "Feherje";
            this.Feherje.ReadOnly = true;
            this.Feherje.Width = 60;
            // 
            // Zsir
            // 
            this.Zsir.HeaderText = "Zsír";
            this.Zsir.Name = "Zsir";
            this.Zsir.ReadOnly = true;
            this.Zsir.Width = 80;
            // 
            // Szenhidrat
            // 
            this.Szenhidrat.HeaderText = "Szénhidrát";
            this.Szenhidrat.Name = "Szenhidrat";
            this.Szenhidrat.ReadOnly = true;
            this.Szenhidrat.Width = 80;
            // 
            // Natrium
            // 
            this.Natrium.HeaderText = "Nátrium";
            this.Natrium.Name = "Natrium";
            this.Natrium.ReadOnly = true;
            this.Natrium.Width = 80;
            // 
            // Kalium
            // 
            this.Kalium.HeaderText = "Kálium:";
            this.Kalium.Name = "Kalium";
            this.Kalium.ReadOnly = true;
            this.Kalium.Width = 80;
            // 
            // Kalcium
            // 
            this.Kalcium.HeaderText = "Kálcium:";
            this.Kalcium.Name = "Kalcium";
            this.Kalcium.ReadOnly = true;
            this.Kalcium.Width = 80;
            // 
            // Magnezium
            // 
            this.Magnezium.HeaderText = "Magnézium:";
            this.Magnezium.Name = "Magnezium";
            this.Magnezium.ReadOnly = true;
            this.Magnezium.Width = 80;
            // 
            // Retinol
            // 
            this.Retinol.HeaderText = "Retinol:";
            this.Retinol.Name = "Retinol";
            this.Retinol.ReadOnly = true;
            this.Retinol.Width = 80;
            // 
            // E_vitamin
            // 
            this.E_vitamin.HeaderText = "E_Vitamin:";
            this.E_vitamin.Name = "E_vitamin";
            this.E_vitamin.ReadOnly = true;
            this.E_vitamin.Width = 80;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.label1.Location = new System.Drawing.Point(303, 65);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(204, 25);
            this.label1.TabIndex = 1;
            this.label1.Text = "Type food name here:";
            // 
            // FoodNameBox
            // 
            this.FoodNameBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 20F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.FoodNameBox.Location = new System.Drawing.Point(513, 56);
            this.FoodNameBox.MaximumSize = new System.Drawing.Size(250, 38);
            this.FoodNameBox.MaxLength = 30;
            this.FoodNameBox.Name = "FoodNameBox";
            this.FoodNameBox.Size = new System.Drawing.Size(183, 38);
            this.FoodNameBox.TabIndex = 0;
            this.FoodNameBox.TextChanged += new System.EventHandler(this.FoodNameBox_TextChanged);
            // 
            // NewFood
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.foodlabel);
            this.Name = "NewFood";
            this.Size = new System.Drawing.Size(1060, 600);
            this.Load += new System.EventHandler(this.NewFood_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.etelekGrid)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label foodlabel;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox FoodNameBox;
        private System.Windows.Forms.DataGridView etelekGrid;
        private System.Windows.Forms.DataGridViewTextBoxColumn Elelmiszer;
        private System.Windows.Forms.DataGridViewTextBoxColumn Energia_KJ;
        private System.Windows.Forms.DataGridViewTextBoxColumn Energia_Kcal;
        private System.Windows.Forms.DataGridViewTextBoxColumn Feherje;
        private System.Windows.Forms.DataGridViewTextBoxColumn Zsir;
        private System.Windows.Forms.DataGridViewTextBoxColumn Szenhidrat;
        private System.Windows.Forms.DataGridViewTextBoxColumn Natrium;
        private System.Windows.Forms.DataGridViewTextBoxColumn Kalium;
        private System.Windows.Forms.DataGridViewTextBoxColumn Kalcium;
        private System.Windows.Forms.DataGridViewTextBoxColumn Magnezium;
        private System.Windows.Forms.DataGridViewTextBoxColumn Retinol;
        private System.Windows.Forms.DataGridViewTextBoxColumn E_vitamin;
    }
}
