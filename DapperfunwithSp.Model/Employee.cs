using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DapperfunwithSp.Model
{
    public class Employee
    {
        public int Employee_Id { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string Gender { get; set; }
        public string Salary { get; set; }
        public string CountryName { get; set; }
        public string StateNme { get; set; }

        public int Country_Id { get; set; }
        public int State_id { get; set; }
    }
}
