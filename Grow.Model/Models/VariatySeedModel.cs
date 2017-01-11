namespace Grow.Model.Models
{
    public class VariatySeedModel
    {
        public long id { get; set; }
        public long idSeed { get; set; }
        public long idVariety { get; set; }
        public int porcentage { get; set; }

        public SeedModel Seed { get; set; }
        public VariatyModel Variaty { get; set; }
    }
}