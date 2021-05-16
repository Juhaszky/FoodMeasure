using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FoodMeasureApp
{
    class Food
    {
        public string Elelmiszer { get; set; }
        public double Energia_KJ { get; set; }
        public double Energia_Kcal { get; set; }
        public double Feherje { get; set; }
        public double Zsir { get; set; }
        public double Szenhidrat { get; set; }
        public double Natrium { get; set; }
        public double Kalium { get; set; }
        public double Kalcium { get; set; }
        public double Magnezium { get; set; }
        public double Retinol { get; set; }
        public double E_vitamin { get; set; }
        public Food(string elelmiszer, double energiakj,double energiakcal,double feherje,double zsir, double szenhidrat,double natrium,double kalium, double kalcium, double magnezium, double retinol, double evitamin)
        {
            this.Elelmiszer = elelmiszer;
            this.Energia_KJ = energiakj;
            this.Energia_Kcal = energiakcal;
            this.Feherje = feherje;
            this.Zsir = zsir;
            this.Szenhidrat = szenhidrat;
            this.Natrium = natrium;
            this.Kalium = kalium;
            this.Kalcium = kalcium;
            this.Magnezium = magnezium;
            this.Retinol = retinol;
            this.E_vitamin = evitamin;
        }
    }
}
