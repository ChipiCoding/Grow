namespace Grow.Model.Models
{
    using System.Collections.Generic;

    public class LightModel
    {
        public long id { get; set; }
        public string code { get; set; }
        public string watts { get; set; }
        public long idTypeLight { get; set; }

        public List<FarmModel> Farms { get; set; }
        public TypeLightModel TypeLight { get; set; }
    }
}
