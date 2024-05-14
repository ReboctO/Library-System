using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace Libary_System.Models
{
   public interface IUserRepository
    {
        bool AuthenticateUser(NetworkCredential credential);
        void Add(UserModel userModel);
        void Edit(UserModel userModel);
        void Remove (int id);
        UserModel GetById(int id);
        UserModel GetByUsername(string UserName);
        IEnumerable<UserModel> GetByAll();

    }
}
