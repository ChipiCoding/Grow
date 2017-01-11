namespace Grow.Model.Models
{
    using System;

    public class PlantModel
    {
        public long id { get; set; }
        public string alias { get; set; }
        public long idSeed { get; set; }
        public long idFarm { get; set; }
        public DateTime? dateGermination { get; set; }
        public DateTime? dateGrow { get; set; }
        public DateTime? dateFlow { get; set; }

        public FarmModel Farm { get; set; }
        public SeedModel Seed { get; set; }
    }
}