﻿using RestWithASP_NETCore.Model;
using System.Collections.Generic;
using RestWithASP_NETCore.Repository.Generic;

namespace RestWithASP_NETCore.Business.Implementations
{
    public class PersonBusiness : IPersonBusiness
    {

        private IRepository<Person> _repository;

        public PersonBusiness(IRepository<Person> repository)
        {
            _repository = repository;
        }

        public Person Create(Person person)
        {
            return _repository.Create(person);
        }

        public Person FindById(long id)
        {
            return _repository.FindById(id);
        }

        public List<Person> FindAll()
        {
            return _repository.FindAll();
        }

        public Person Update(Person person)
        {
            return _repository.Update(person);
        }

        public void Delete(long id)
        {
            _repository.Delete(id);
        }

        public bool Exists(long id)
        {
            return _repository.Exists(id);
        }
    }
}
