//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Grow.Data.Model.Entities
{
    using System;
    using System.Collections.Generic;
    
    public partial class Farm
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Farm()
        {
            this.Plants = new HashSet<Plant>();
        }
    
        public long id { get; set; }
        public string name { get; set; }
        public System.DateTime dateBegin { get; set; }
        public Nullable<System.DateTime> dateEnd { get; set; }
        public long idTypeFarm { get; set; }
        public Nullable<long> idLight { get; set; }
    
        public virtual TypeFarm TypeFarm { get; set; }
        public virtual Ligth Ligth { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Plant> Plants { get; set; }
    }
}
