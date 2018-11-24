using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Threading;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testproduct
{
    public partial class Registration : System.Web.UI.Page
    {
        private SqlConnection sqlconnection = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionstring = ConfigurationManager.ConnectionStrings["DB"].ConnectionString; // Подключаем БД

            sqlconnection = new SqlConnection(connectionstring);

            sqlconnection.Open();
        }
        protected void RegisterUser(object sender, EventArgs e)
        {
            Dictionary<string, string> db = new Dictionary<string, string>(); // Создаем словарь(коллекция) для занесения никнейма и пароля

            SqlCommand getUserInfo = new SqlCommand("SELECT [Email], [Username], [Password] FROM [Users]", sqlconnection); // sql команда для выборки почты,имени и пароля
            SqlDataReader sqlReader = null;
            try
            {
                sqlReader = getUserInfo.ExecuteReader(); // ридеру присваиваем sql команду для чтения

                while (sqlReader.Read())
                {
                    db.Add(Convert.ToString(sqlReader["Username"]), Convert.ToString(sqlReader["Password"])); // Заносим в словарь никнейм и пароль
                    db.Add(Convert.ToString(sqlReader["Email"]), Convert.ToString(sqlReader["Email"])); // И так же заносим имейл и имейл для дальнейшей проверки на наличие уже зарег. такого пароля
                }
            }
            catch { }
            finally
            {
                if (sqlReader != null)
                    sqlReader.Close();
            }

            if (!db.Keys.Contains(txtUsername.Text)) // Выводим сообщение с текстом имейл или ник заняты,соотвественно
            {                                        // Не стал делать вместе email+никнейм и вывод сообщения(совпадает пароль и ник)
                if (!db.Keys.Contains(txtEmail.Text)) // т.к счёл это небезопасным для аккаунта пользователя
                {
                    SqlCommand registr = new SqlCommand("INSERT INTO [Users] (Username, Password, Email, Firstname, Surname, Gender, Phone, Address)" +
                    "VALUES(@Username, @Password, @Email, @Firstname, @Surname, @Gender, @Phone, @Address)", sqlconnection); // sql команда для занесения в таблицу информативных переменных
                    registr.Parameters.AddWithValue("Username", txtUsername.Text);
                    registr.Parameters.AddWithValue("Password", txtPassword.Text);
                    registr.Parameters.AddWithValue("Email", txtEmail.Text);
                    registr.Parameters.AddWithValue("Firstname", txtFirstname.Text);
                    registr.Parameters.AddWithValue("Surname", txtSurname.Text);
                    registr.Parameters.AddWithValue("Gender", ddlGender.SelectedValue);
                    registr.Parameters.AddWithValue("Phone", txtPhone.Text);
                    registr.Parameters.AddWithValue("Address", txtAddress.Text);
                    registr.ExecuteNonQuery();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), // сообщение об успешной регистрации и перенос Пользователя на главную страницу
                    "alert",
                    "alert('You have successfully registered, Login In');window.location ='Main.aspx';",true);
                }
                else // сообщение о зарегистрированном email
                {
                    string s1 = "alert(\"This email is registered\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                      "ServerControlScript", s1, true);
                }
            }
            else // сообщение о зарегистрированном username
            {
                string s2 = "alert(\"This username is registered\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                  "ServerControlScript", s2, true);
            }
            sqlconnection.Close(); // Закрываем соединение с БД
        }
        protected void Page_UnLoad(object sender, EventArgs e)  // При разгрузке сервера(если он сильно загружен) мы отключим базу данных т.к может быть утечка
        {
            if (sqlconnection != null && sqlconnection.State != ConnectionState.Closed) // Проверяем подключение равно ли нулю или уже закрыто, если нет то закрываем
            {
                sqlconnection.Close();
            }
        }
    }
}