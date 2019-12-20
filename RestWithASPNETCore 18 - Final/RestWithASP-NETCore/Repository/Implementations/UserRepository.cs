using RestWithASP_NETCore.Model;
using RestWithASP_NETCore.Model.Context;
using System;
using System.Collections.Generic;
using System.Linq;

namespace RestWithASP_NETCore.Repository.Implementations
{
    public class UserRepository : IUserRepository
    {
        private readonly MySQLContext _context;

        public UserRepository(MySQLContext context)
        {
            _context = context;
        }

        public User FindByLogin(string login)
        {
            return _context.Users.SingleOrDefault(p => p.Login.Equals(login));
        }
    }
}
