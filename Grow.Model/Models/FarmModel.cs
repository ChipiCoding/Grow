namespace Grow.Model.Models
{
    using System;
    using System.Collections.Generic;

    public class FarmModel
    {
        public long id { get; set; }
        public string name { get; set; }
        public DateTime dateBegin { get; set; }
        public DateTime? dateEnd { get; set; }
        public long idTypeFarm { get; set; }
        public long idLight { get; set; }

        //Properties navegation
        public TypeFarmModel TypeFarm { get; set; }
        public LightModel Ligth { get; set; }
        public List<PlantModel> Plants { get; set; }
    }
}
