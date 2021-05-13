
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
            this.SuspendLayout();
            // 
            // foodlabel
            // 
            this.foodlabel.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.foodlabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.foodlabel.Location = new System.Drawing.Point(0, 0);
            this.foodlabel.Name = "foodlabel";
            this.foodlabel.Size = new System.Drawing.Size(1057, 57);
            this.foodlabel.TabIndex = 0;
            this.foodlabel.Text = "Adding new food";
            this.foodlabel.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.Silver;
            this.panel1.Location = new System.Drawing.Point(0, 53);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1060, 547);
            this.panel1.TabIndex = 1;
            // 
            // NewFood
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.foodlabel);
            this.Name = "NewFood";
            this.Size = new System.Drawing.Size(1060, 600);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label foodlabel;
        private System.Windows.Forms.Panel panel1;
    }
}
