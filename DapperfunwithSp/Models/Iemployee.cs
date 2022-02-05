using DapperfunwithSp.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DapperfunwithSp.Models
{
   public interface Iemployee
   {
        List<Employee> GetEmployees();
        void Addemployee(Employee obj);
        void Updateemployee(Employee obj);
        int Deleteemployee(int id);
        List<Country> GetCountries();
       List<state> GetStates( int Country_Id);
    }
}
