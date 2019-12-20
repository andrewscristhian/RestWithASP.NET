using RestWithASP_NETCore.Model;
using System.Collections.Generic;

namespace RestWithASP_NETCore.Repository.Generic
{
    public interface IPersonRepository : IRepository<Person>
    {
        List<Person> FindByName(string firstName, string lastName);
    }
}
