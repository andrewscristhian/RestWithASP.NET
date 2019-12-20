using System.Collections.Generic;
using RestWithASP_NETCore.Model;

namespace RestWithASP_NETCore.Business
{
    public interface IBookBusiness
    {
        Book Create(Book book);
        Book FindById(long id);
        List<Book> FindAll();
        Book Update(Book book);
        void Delete(long id);
    }
}