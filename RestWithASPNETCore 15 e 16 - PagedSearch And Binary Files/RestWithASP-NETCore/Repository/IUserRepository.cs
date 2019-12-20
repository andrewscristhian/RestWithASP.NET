using System.Collections.Generic;
using RestWithASP_NETCore.Model;

namespace RestWithASP_NETCore.Repository
{
    public interface IUserRepository
    {
        User FindByLogin(string login);
    }
}
