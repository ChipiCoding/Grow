namespace Grow.Service.Services
{
    using System.Linq;
    using System.Collections.Generic;
    using System.ServiceModel;
    using Data.Implementation;
    using Contracts;
    using ResponseMessages;

    [ServiceBehavior(IncludeExceptionDetailInFaults = true)]
    public class GrowService : IGrowService
    {
        public List<GetBanksResponse> GetBanks()
        {
            var result = new BankRepositoryManager().Get();
            return result.Select(bank => new GetBanksResponse()
            {
                Id = bank.id.ToString(),
                Description = bank.description,
                Code = bank.code,
                Seeds = bank.Seeds.Select(seed => new InnerSeed()
                {
                    Id = seed.id.ToString(),
                    Name = seed.name
                }).ToList()
            }).ToList();
        }

        public string Pruebas()
        {
            return "Done";
        }
    }
}
