using System;
using System.Threading.Tasks;
using AutoFixture;
using FluentAssertions;
using Newtonsoft.Json;
using NUnit.Framework;
using ClaimantInformation = AcademyResidentInformationApi.V1.Boundary.Responses.ClaimantInformation;

namespace AcademyResidentInformationApi.Tests.V1.E2ETests
{
    [TestFixture]
    public class GetResidentInformationById : IntegrationTests<Startup>
    {
        private IFixture _fixture;

        [SetUp]
        public void SetUp()
        {
            _fixture = new Fixture();
        }

        [Test]
        public async Task GetClaimantInformationByIdReturnsTheCorrectInformation()
        {
            var claimId = _fixture.Create<int>();
            var personRef = _fixture.Create<int>();
            var academyId = $"{claimId}-{personRef}";
            var expectedResponse = E2ETestHelpers.AddPersonWithRelatesEntitiesToDb(AcademyContext, academyId);

            var requestUri = new Uri($"api/v1/claimants/{academyId}", UriKind.Relative);
            var response = Client.GetAsync(requestUri);
            var statusCode = response.Result.StatusCode;
            statusCode.Should().Be(200);

            var content = response.Result.Content;
            var stringContent = await content.ReadAsStringAsync();
            var convertedResponse = JsonConvert.DeserializeObject<ClaimantInformation>(stringContent);

            convertedResponse.Should().BeEquivalentTo(expectedResponse);
        }
    }
}