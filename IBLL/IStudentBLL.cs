#region
/*************************************************************************************
     * CLR 版本：       4.0.30319.18052
     * 类 名 称：       IStudentBLL
     * 机器名称：       JASON-PC
     * 命名空间：       IBLL
     * 文 件 名：       IStudentBLL
     * 创建时间：       2014/1/9 22:08:14
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
using Entity;
namespace IBLL
{
   public interface IStudentBLL : IBaseBLL<STUDENT>
    {
        /// <summary>
        /// 根据条件获取所有用户数量
        /// </summary>
        /// <returns></returns>
        int GetStudentCount();
        /// <summary>
        /// 根据条件获取所有用户
        /// </summary>
        /// <returns></returns>
        List<STUDENT> GetAllStudents();
        /// <summary>
        /// 获取用户
        /// </summary>
        /// <param name="userID"></param>
        /// <returns></returns>
        STUDENT GetStudents(string id);
        /// <summary>
        /// 删除用户
        /// </summary>
        /// <param name="userID"></param>
        /// <returns></returns>
        bool DeleteStudent(string id);
    }
}
