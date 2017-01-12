using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Grow.Service.ResponseMessages
{
    public class InnerSeed
    {
        public string Id { get; set; }

        public string Name { get; set; }
    }

    public class GetBanksResponse
    {
        public string Id { get; set; }

        public string Description { get; set; }

        public string Code { get; set; }

        public List<InnerSeed> Seeds { get; set; }
    }
}