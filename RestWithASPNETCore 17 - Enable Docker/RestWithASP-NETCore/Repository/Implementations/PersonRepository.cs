using RestWithASP_NETCore.Model;
using RestWithASP_NETCore.Model.Context;
using RestWithASP_NETCore.Repository.Generic;
using System.Collections.Generic;
using System.Linq;

namespace RestWithASP_NETCore.Repository.Implementations
{
    public class PersonRepository : GenericRepository<Person>, IPersonRepository
    {

        public PersonRepository(MySQLContext context) : base(context) { }

        public List<Person> FindByName(string firstName, string lastName)
        {
            if (!string.IsNullOrEmpty(firstName) && !string.IsNullOrEmpty(lastName))
            {
                return _context.Persons.Where(p => p.FirstName.Contains(firstName) && p.LastName.Contains(lastName)).ToList();
            }
            else if (string.IsNullOrEmpty(firstName) && !string.IsNullOrEmpty(lastName))
            {
                return _context.Persons.Where(p => p.LastName.Contains(lastName)).ToList();
            }
            else if (!string.IsNullOrEmpty(firstName) && string.IsNullOrEmpty(lastName))
            {
                return _context.Persons.Where(p => p.FirstName.Contains(firstName)).ToList();
            }
            return _context.Persons.ToList();
        }
    }
}