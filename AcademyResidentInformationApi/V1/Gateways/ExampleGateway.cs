using AcademyResidentInformationApi.V1.Domain;
using AcademyResidentInformationApi.V1.Factories;
using AcademyResidentInformationApi.V1.Infrastructure;

namespace AcademyResidentInformationApi.V1.Gateways
{
    public class ExampleGateway : IExampleGateway
    {
        private readonly IDatabaseContext _databaseContext;

        public ExampleGateway(IDatabaseContext databaseContext)
        {
            _databaseContext = databaseContext;
        }

        public Entity GetEntityById(int id)
        {
            var result = _databaseContext.DatabaseEntities.Find(id);

            return (result != null) ?
                result.ToDomain() :
                null;
        }
    }
}