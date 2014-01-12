#region
/*************************************************************************************
     * CLR 版本：       4.0.30319.18052
     * 类 名 称：       StudentBLL
     * 机器名称：       JASON-PC
     * 命名空间：       BLL
     * 文 件 名：       StudentBLL
     * 创建时间：       2014/1/9 22:12:17
     * 作    者：       杨廷兴 Jason Yang(418505093@qq.com)
     * 说    明：       
     * 修改时间：
     * 修 改 人：
*************************************************************************************/
#endregion
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using IBLL;
using IEFDao;
using Spring.Context;
using Spring.Context.Support;
using Entity;

namespace BLL
{
    public class StudentBLL : BaseBLL<STUDENT>, IStudentBLL
    {
        private IStudentDao<STUDENT> studentDao = null;

        public StudentBLL()
        {
            IApplicationContext context = ContextRegistry.GetContext();
            studentDao = (IStudentDao<STUDENT>)context.GetObject("StudentEFDao");
            Dao = studentDao;
        }
        public int GetStudentCount()
        {
            return Dao.GetCount(x => x.Id != "");
        }

        public List<STUDENT> GetAllStudents()
        {
            return Dao.GetEntities(x => x.Id != "").ToList();
        }

        public STUDENT GetStudents(string userID)
        {
            return Dao.GetEntity(x => x.Id == userID);
        }

        public bool DeleteStudent(string userID)
        {
          return  Dao.Delete(Dao.GetEntity(x => x.Id == userID));
        }

       
    }
}
