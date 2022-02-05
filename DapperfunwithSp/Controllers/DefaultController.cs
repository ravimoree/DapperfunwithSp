using DapperfunwithSp.Model;
using DapperfunwithSp.Models;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DapperfunwithSp.Controllers
{
    public class DefaultController : Controller
    {
        Iemployee dc = new Employeeservics();
        public ActionResult Index(int? page)
        {
            var list = dc.GetEmployees();
            return View(list.ToPagedList(page ?? 1, 5));
        }
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(Employee obj)
        {
           dc.Addemployee(obj);
            return RedirectToAction("Index");
        }
        public ActionResult getcountery()
        {
            var dada = dc.GetCountries();
            return Json(dada, JsonRequestBehavior.AllowGet);
        }
        public ActionResult getstate(int Country_Id)
        {
            var data = dc.GetStates(Country_Id);
            return Json(data, JsonRequestBehavior.AllowGet);
        }
        public ActionResult Edit(int id)
        {
           var objt=dc.GetEmployees().Find(m => m.Employee_Id == id);
            return View(objt);
        }
        [HttpPost]
        public ActionResult Edit(Employee obj)
        {
            dc.Updateemployee(obj);
            return RedirectToAction("Index");
        }
        public ActionResult delete(int id)
        {
            dc.Deleteemployee(id);
            return RedirectToAction("Index");
        }
    }
}; 