using RestWithASP_NETCore.Data.VO;
using System.Collections.Generic;

namespace RestWithASP_NETCore.Business
{
    public interface ILoginBusiness
    {
        object FindByLogin(UserVO user);
    }
}