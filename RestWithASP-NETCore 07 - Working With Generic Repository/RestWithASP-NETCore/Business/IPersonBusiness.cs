﻿using System.Collections.Generic;
using RestWithASP_NETCore.Model;

namespace RestWithASP_NETCore.Business
{
    public interface IPersonBusiness
    {
        Person Create(Person person);
        Person FindById(long id);
        List<Person> FindAll();
        Person Update(Person person);
        void Delete(long id);
    }
}