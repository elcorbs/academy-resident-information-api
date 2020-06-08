using System.Collections.Generic;
using AcademyResidentInformationApi.V1.Boundary.Responses;
using AcademyResidentInformationApi.V1.Domain;
using ResidentInformation = AcademyResidentInformationApi.V1.Domain.ResidentInformation;

namespace AcademyResidentInformationApi.V1.Gateways
{
    public interface IAcademyGateway
    {
        List<ResidentInformation> GetAllResidents(int cursor, int limit, string firstname = null,
            string lastname = null, string postcode = null, string address = null);
    }

}
