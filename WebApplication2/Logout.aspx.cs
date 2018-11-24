using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testproduct
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie login = new HttpCookie("login", string.Empty); // Создаем новые куки логин и подпись

            HttpCookie sign = new HttpCookie("sign", string.Empty);

            login.Expires = DateTime.Now.AddDays(-1); // добавляем к новым куки теперешнюю дату и отнимаем день
            sign.Expires = DateTime.Now.AddDays(-1);

            Response.Cookies.Add(login); // заменяем куки у пользователя на новые
            Response.Cookies.Add(sign);

            Response.Redirect("Loginpage.aspx");
        }
    }
}