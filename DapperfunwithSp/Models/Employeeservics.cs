using Dapper;
using DapperfunwithSp.Data;
using DapperfunwithSp.Model;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace DapperfunwithSp.Models
{
    public class Employeeservics : Iemployee
    {
        public void Addemployee(Employee obj)
        {

            List<ParameterInfo> parameters = new List<ParameterInfo>();
            parameters.Add(new ParameterInfo() { ParameterName = "Name", ParameterValue = obj.Name });
            parameters.Add(new ParameterInfo() { ParameterName = "Email", ParameterValue = obj.Email });
            parameters.Add(new ParameterInfo() { ParameterName = "Password", ParameterValue = obj.Password });
            parameters.Add(new ParameterInfo() { ParameterName = "Salary", ParameterValue = obj.Salary });
            parameters.Add(new ParameterInfo() { ParameterName = "Gender", ParameterValue = obj.Gender });
            parameters.Add(new ParameterInfo() { ParameterName = "Country_Id", ParameterValue = obj.Country_Id });
            parameters.Add(new ParameterInfo() { ParameterName = "State_id", ParameterValue = obj.State_id });
            
            SqlHelper.GetIntRecord<Employee>("Addemployee", parameters);
        }

        public int Deleteemployee(int id)
        {
            List<ParameterInfo> parameters = new List<ParameterInfo>();
            parameters.Add(new ParameterInfo() { ParameterName = "Employee_Id", ParameterValue = id });
            int success = SqlHelper.ExecuteQuery("Deleteemployee", parameters);
            return success;
        }

        public List<Country> GetCountries()
        {
            var clist = SqlHelper.GetRecordList<Country>("Getcountry").ToList();
            return clist;
        }
        public List<Employee> GetEmployees()
        {
            var elist = SqlHelper.GetRecordList<Employee>("Getemployee").ToList();
            return elist;
        }

        public List<state> GetStates(int Country_Id)
        {
            List<ParameterInfo> parameters = new List<ParameterInfo>();
            parameters.Add(new ParameterInfo() { ParameterName = "Country_Id", ParameterValue = Country_Id });
            var slist = SqlHelper.GetRecords<state>("Getstate", parameters);
            return slist;
        }

        public void Updateemployee(Employee obj)
        {
            List<ParameterInfo> parameters = new List<ParameterInfo>();
            parameters.Add(new ParameterInfo() { ParameterName = "Employee_Id", ParameterValue = obj.Employee_Id });
            parameters.Add(new ParameterInfo() { ParameterName = "Name", ParameterValue = obj.Name });
            parameters.Add(new ParameterInfo() { ParameterName = "Email", ParameterValue = obj.Email });
            parameters.Add(new ParameterInfo() { ParameterName = "Password", ParameterValue = obj.Password });
            parameters.Add(new ParameterInfo() { ParameterName = "Salary", ParameterValue = obj.Salary });
            parameters.Add(new ParameterInfo() { ParameterName = "Gender", ParameterValue = obj.Gender });
            parameters.Add(new ParameterInfo() { ParameterName = "Country_Id", ParameterValue = obj.Country_Id });
            parameters.Add(new ParameterInfo() { ParameterName = "State_id", ParameterValue = obj.State_id });
            SqlHelper.GetIntRecord<Employee>("Updateemployee", parameters);
        }
    }
}