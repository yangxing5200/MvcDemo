using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BLL;
using IBLL;

namespace MvcDemo.Controllers
{
    public class StudentController : Controller
    {
        //
        // GET: /Student/

        private IStudentBLL bll=new StudentBLL();
        public ActionResult Index()
        {
            return View();
        }

    }
}
