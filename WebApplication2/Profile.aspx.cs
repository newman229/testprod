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
    public partial class Profile : System.Web.UI.Page
    {
        private SqlConnection sqlconnection = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie login = Request.Cookies["login"]; // Возвращаем куки новым переменным логин и подпись
            HttpCookie sign = Request.Cookies["sign"];
            if (login != null && sign != null)
            {
                if (sign.Value == PasswordToHash.GetPtH(login.Value + "bytepp")) // проверяем на правильность куки используя метод хэширования
                {
                    Label.Text = login.Value;
                    LabelUn.Text = login.Value;
                }
                else Response.Redirect("Logout.aspx");
            }
            else { Response.Redirect("Logout.aspx"); }
            string connectionstring = ConfigurationManager.ConnectionStrings["DB"].ConnectionString; // Подключаем БД
            sqlconnection = new SqlConnection(connectionstring);
            sqlconnection.Open();
            SqlCommand getInfo = new SqlCommand("Select Email, Firstname, Surname, Gender, Phone, Address FROM [Users] WHERE Username='" + login.Value + "'", sqlconnection);
            SqlDataReader dataReader; // Строчкой выше, создаем запрос в БД на информацию по юзернейму
            dataReader = getInfo.ExecuteReader();
            while (dataReader.Read())
            {
                Label1.Text = dataReader[0].ToString(); // Присваиваем лэйблам значения с БД(копипаст ибо label не индексируется)
                Label2.Text = dataReader[1].ToString();
                Label3.Text = dataReader[2].ToString();
                Label4.Text = dataReader[3].ToString();
                Label5.Text = dataReader[4].ToString();
                Label6.Text = dataReader[5].ToString();
            }
            sqlconnection.Close();
        }
    }
}