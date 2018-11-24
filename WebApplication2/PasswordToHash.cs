using System;
using System.Security.Cryptography;
using System.Collections.Generic;
using System.Text;
using System.Linq;
using System.Web;

namespace testproduct
{
    public static class PasswordToHash
    {
        public static string GetPtH(string a)
        {
            MD5CryptoServiceProvider provider = new MD5CryptoServiceProvider(); // создаем переменную provider мд5, которая будет вычислять хэш, строки которая введена

            byte[] hash = provider.ComputeHash(Encoding.Default.GetBytes(a)); // создаем массив байтов и записываем в него хэш-переменные которые мы получили кодировкой строки а

            return BitConverter.ToString(hash).ToLower().Replace("-", ""); // вовзращаем строку hash без больших букв и с замененными - на ничего
        }
    }
}