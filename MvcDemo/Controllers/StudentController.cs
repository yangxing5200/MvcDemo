using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BLL;
using IBLL;
using Entity;

namespace MvcDemo.Controllers
{
    public class StudentController : Controller
    {
        //
        // GET: /Student/

        private IStudentBLL bll = new StudentBLL();
        public ActionResult Index()
        {
            return View(bll.GetAllStudents());
        }
        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(STUDENT u, FormCollection form)
        {
            if (ModelState.IsValid)//实例的模型状态是否验证
            {
                u.Id = Guid.NewGuid().ToString().Replace("-", "");
                u.SchoolId = "xlzx";
                bll.Insert(u);
                return RedirectToAction("Index");
            }
            else
                return View();
        }
        [HttpGet]
        public ActionResult Edit(string id)
        {
            return View(bll.GetStudents(id));
        }
        /// <summary>
        /// 修改用户操作
        /// </summary>
        [HttpPost]
        public ActionResult Edit(int userID, STUDENT u)
        {
            bll.Update(u);
            return RedirectToAction("Index");
        }
        public ActionResult Delete(string id)
        {
            bll.DeleteStudent(id);
            return RedirectToAction("Index");
        }

    }
}
