using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CLWeb;
using MvcPOS15.Models;

namespace MvcPOS15.Controllers
{

    public class HomeController : Controller
    {
        public ActionResult test()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        public ActionResult login3()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
 
        public ActionResult login2()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        public ActionResult Index()
        {
            
            ViewBag.Message = "Modify this template to jump-start your ASP.NET MVC application.";
            ViewBag.Css = "this is css";
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your app description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ViewResult Partial2()
        {
            return View("Partial2");
        }
        //public ActionResult Partial2()
        //{

        //    ViewBag.Message = "Modify this template to jump-start your ASP.NET MVC application.";
        //    ViewBag.Css = "this is css";
        //    return View();
        //}
        private List<PartialModel2> PartialModel2()
        {
            List<PartialModel2> model = new List<PartialModel2>();

            model.Add(new PartialModel2()
            {

                Name = "Rima",
                Age = 20,
                Address = "Kannur"
            });

            model.Add(new PartialModel2()
            {

                Name = "Rohan",
                Age = 23,
                Address = "Ernakulam"
            });
            model.Add(new PartialModel2()
            {
                Name = "Reshma",
                Age = 22,
                Address = "Kannur"
            });

            return model;
        }

    }
}
