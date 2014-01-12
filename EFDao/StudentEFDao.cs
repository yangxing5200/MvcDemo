#region
/*************************************************************************************
     * CLR 版本：       4.0.30319.18052
     * 类 名 称：       StudentEFDao
     * 机器名称：       JASON-PC
     * 命名空间：       EFDao
     * 文 件 名：       StudentEFDao
     * 创建时间：       2014/1/12 15:26:19
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
using IEFDao;

namespace EFDao
{
   public class StudentEFDao :BaseEFDao<STUDENT>, IStudentEFDao<STUDENT>
    {
    }
}
