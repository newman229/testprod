<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="testproduct.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml"> <!-- Страница создана без middle контента и т.д --> 
<head runat="server">
    <link  type="text/css" rel="stylesheet" href="/Content/css/main_style.css" />  <!-- Подключаем css and bootstrap -->
    <link type="text/css" rel="stylesheet" href="/Content/css/bootstrap.min.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
    <body style="background-color:#464f5b;" > <!-- Создаем тело веб-страницы -->
        <div class="wrapper">
        <header class="header"> <!-- шапка -->
	<div class="header-right">
            <button class="fbutton"><a style="color: #cecece; text-decoration:none" href="Loginpage.aspx">Login In</a></button> <!-- Кнопки для Авторизации -->
            <button class="fbutton" style="margin-left:-14px"><a style="color: #cecece; text-decoration:none" href="Registration.aspx">Sign Up</a></button>
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
	</div>
</header>
    <div class="middle"> <!-- Мидл веб-сайта -->
        <div class="container"> <!-- 1 контент и 1 сайдбар --> 
            <main class="content"> <!-- Контент --> 
                 <strong>Content... Content... Content... Content... Content... Content...</strong>
            </main>
        </div>
        <aside class="left-sidebar"> <!-- Сайдбар --> 
			<strong>sidebar sidebar sidebar sidebar</strong>
		</aside>
    </div>  
</div>
</body>
</html>
