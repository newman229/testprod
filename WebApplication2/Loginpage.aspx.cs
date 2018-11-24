using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Threading;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testproduct
{
    public partial class Loginpage : System.Web.UI.Page
    {
        private SqlConnection sqlconnection = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionstring = ConfigurationManager.ConnectionStrings["Db"].ConnectionString; // Подключаем базу данных
                                                                                                     // через строку подключения
                                                                                                     // сonnectionString описана в web.config
            sqlconnection = new SqlConnection(connectionstring); //соединение с бд

            sqlconnection.Open();
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            Dictionary<string, string> db = new Dictionary<string, string>(); // Создаем словарик(коллекцию) для занесения ключа и значения
                                                                              // Логина и пароля аккаунта для проверки на подлинность
            SqlCommand getUserInfo = new SqlCommand("SELECT [Username], [Password] FROM [Users]", sqlconnection); // Создаем команду БД
                                                                                                                  // Которая выбирает Логин и пароль с users
            SqlDataReader sqlReader = null;
            try
            {
                sqlReader = getUserInfo.ExecuteReader(); // помещаем в ридер команду sql(которая описана выше) и ридер читает её

                while (sqlReader.Read())
                {
                    db.Add(Convert.ToString(sqlReader["Username"]), Convert.ToString(sqlReader["Password"])); // Записываем ключ и значение(key value)
                }
            }
            catch { }
            finally
            {
                if (sqlReader != null)
                    sqlReader.Close();
            }
            if (!db.Keys.Contains(txtUsername.Text)) // Проверяем на наличие в словаре username
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(),// Нету, то выдаем messagebox с соотвественной надписью и функцией перехода назад
                "alert", "alert('Incorrect account password or Username');window.location ='Loginpage.aspx';", true);
                return;
            }
            if (txtPassword.Text == db[txtUsername.Text]) // сравниваем принадлежность пароля к логину
            {
                HttpCookie login = new HttpCookie("login", txtUsername.Text); // Это проверка на наличие соотвествующих куки у пользователя, тоесть защита от неавторизированного пользователя
                HttpCookie sign = new HttpCookie("sign", PasswordToHash.GetPtH(txtUsername.Text + "bytepp")); // Создаем два новых файла куки и присваиваем им значение
                //у логина значение логин, а вот у подписи(sign) значение берется из класса с методом генерации хэша.
                Response.Cookies.Add(login); // добавляем куки к логину и подписи
                Response.Cookies.Add(sign);
                Response.Redirect("Profile.aspx"); // перенаправляем юзера на страницу с его информацией
            }
            else
            {
                Response.Write("<script>alert('Incorrect account password or Username');</script>");
            }
            sqlconnection.Close(); // Закрываем соединение с БД
        }

        protected void Page_UnLoad(object sender, EventArgs e) // При разгрузке сервера(если он сильно загружен) мы отключим базу данных т.к может быть утечка
        {
            if (sqlconnection != null && sqlconnection.State != ConnectionState.Closed)// Проверяем подключение равно ли нулю или уже закрыто, если нет то закрываем
            {
                sqlconnection.Close();
            }
        }
    }
}