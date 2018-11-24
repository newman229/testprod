<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="testproduct.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link  type="text/css" rel="stylesheet" href="/Content/css/profile_style.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
    .colum2 {
    width: 30%;
    }

    .colum1 {
    width: 35%;
    }
    </style>
</head>
 <body style="background-color:#464f5b"> <!-- Тело -->
        <div class="wrapper">
        <header class="header"> <!-- Шапка -->
	<div class="header-right">
            <button class="fbutton"><a style="color: #cecece; text-decoration:none" href="Profile.aspx">My profile</a></button> <!-- Кнопки для Авторизации -->
            <button class="fbutton" style="margin-left:-14px"><a style="color: #cecece; text-decoration:none" href="Logout.aspx">Logout</a></button>
	</div>
        <div class="secheader" style="background-color:white;"> <!-- Тут же вторая шапка с Главным меню -->
            <ul class="Main_menu"> <!-- Список ссылок(разделов) мэин меню -->
                        <li class="element_menu">
                            <a class="element_menu" style="margin-left:100px; color: black; text-decoration:none" href="Main.aspx">We</a>
                        </li>
                        <li class="element_menu">
                            <a class="element_menu" style="color: black; text-decoration:none" href="https://github.com/">GitHub</a>
                        </li>
                        <li class="element_menu ">
                            <a class="element_menu" style="color: black; text-decoration:none" href="https://stackoverflow.com/">Stack Overflow</a>
                        </li>
                        <li class="element_menu">
                            <a class="element_menu" style="color: black; text-decoration:none" href="https://www.reddit.com/">Reddit</a>
                        </li>
                        <li class="element_menu">
                            <a class="element_menu" style="color: black; text-decoration:none" href="https://www.w3schools.com/">W3Schools</a></li>
            </ul>
	</div></header>
    <div class="middle"> <!-- Мидл веб-сайта -->
        <div class="container">
            <div class="content"> <!--Один контент-->
                <form runat="server" id="form2">   <!-- Форма -->
                 <table border="0" cellpadding="0" cellspacing="0" style="width:35%;">   <!-- Создаем таблицу для информации о пользователе -->
        <tr>
            <th colspan="2" style="background-color: yellow;">
                Infromation about <asp:Label runat="server" ID="Label"></asp:Label> <!-- Заголовок -->
            </th>
        </tr>
        <tr>
            <td class="colum1">
                Username:
            </td>
            <td class="colum2">
                <asp:Label runat="server" ID="LabelUn"></asp:Label>        <!-- 1 столбец строчки - Заголовок строки(дальше тоже самое обозначу "info") -->
            </td>
        </tr>
        <tr>
            <td class="colum1">
                Email:
            </td>
            <td class="colum2">
                <asp:Label runat="server" ID="Label1"></asp:Label>         <!-- info -->
            </td>
        </tr>
        <tr>
            <td class="colum1">
                Firstname:
            </td>
            <td class="colum2">
                <asp:Label runat="server" ID="Label2"></asp:Label>         <!-- info -->
            </td>
        </tr>
        <tr>
            <td class="colum1">
                Surname:
            </td>
            <td class="colum2">
                <asp:Label runat="server" ID="Label3"></asp:Label>         <!-- info -->
            </td>
        </tr>
        <tr>
            <td class="colum1">
                Gender:
            </td>
            <td class="colum2" >
                <asp:Label runat="server" ID="Label4"></asp:Label>         <!-- info -->
            </td>
        </tr>
         <tr>
            <td class="colum1">
                Phone:
            </td>
            <td class="colum2">
                <asp:Label runat="server" ID="Label5"></asp:Label>         <!-- info -->
            </td>
        </tr>
        <tr>
            <td class="colum1">
                Address:
            </td>
            <td class="colum2">
                <asp:Label runat="server" ID="Label6" ></asp:Label>        <!-- info -->
            </td>
        </tr>
    </table> <!-- Закрытие тегов таблицы и формы. -->
        </form> 
            </div>
        </div>
    </div>
</div>
</body>
</html>
