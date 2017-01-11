namespace Grow.Model.Models
{
    using System.Collections.Generic;

    public class SeedModel
    {
        public long id { get; set; }
        public string name { get; set; }
        public long idBank { get; set; }
        public string genetic { get; set; }
        public int? daysGrow { get; set; }
        public int? daysFlow { get; set; }
        public int? heightIndoor { get; set; }
        public int? heightOutdoor { get; set; }
        public long idTypeSeed { get; set; }
        public long idSex { get; set; }

        public BankModel Bank { get; set; }
        public List<PlantModel> Plants { get; set; }
        public SexModel Sex { get; set; }
        public List<VariatySeedModel> TypeSeeds { get; set; }
    }
}