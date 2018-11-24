<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loginpage.aspx.cs" Inherits="testproduct.Loginpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link  type="text/css" rel="stylesheet" href="/Content/css/logn_style.css" /> <!-- Подключаем css -->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="background-color:#464f5b">
        <header>
	<div class="header-right"> <!-- две шапки, одна с авторизацией и регистрацией, вторая меин меню -->
            <button class="fbutton"><a style="color: #cecece; text-decoration:none" href="Loginpage.aspx">Login In</a></button> <!-- Кнопки авторицазии --> 
            <button class="fbutton" style="margin-left:-14px"><a style="color: #cecece; text-decoration:none" href="Registration.aspx">Sign Up</a></button>
	</div>
        <div class="secheader" style="background-color:white;"> <!-- Главное меню как шапка  --> 
            <ul class="Main_menu">
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
         <form id="form1" runat="server"> <!-- Создаем форму -->
<table border="0"; cellpadding="0"; cellspacing="0";>
    <tr>
        <th colspan="3" style=" background-color: yellow;"> Login in </th>
    </tr>
    <tr>
        <td>Username</td>  
        <td><asp:TextBox ID="txtUsername" runat="server" placeholder="Your Username"/></td> <!-- Создаем текстбокс для ввода имени с подсказкой(холдэ) -->
        <td class="auto-style1"><asp:Label runat="server" ID="require1"> <asp:RequiredFieldValidator Font-Size="11px" Display="Dynamic" ErrorMessage="<img src='Content/Images/no!.gif'/> Please Enter your name" ForeColor="Red" ControlToValidate="txtUsername"
                    runat="server" /></asp:Label></td> <!-- Создаем в лейбле и в него добавляем валидатор( на наличие текста в текстбоксе) -->
    </tr>
    <tr>
        <td>Password</td>
        <td><asp:TextBox ID="txtPassword" runat="server" placeholder="Your Password" TextMode="Password" /></td>
        <td class="auto-style1"><asp:Label runat="server" ID="require2"> <asp:RequiredFieldValidator Font-Size="11px" Display="Dynamic" ErrorMessage="<img src='Content/Images/no!.gif'/> Please Enter your password" ForeColor="Red" ControlToValidate="txtPassword"
                    runat="server" /></asp:Label></td>
    </tr>
    <tr>
        <td></td>
        <td><asp:Button Text="Submit" runat="server" OnClick="Button_Click" /></td> <!-- Кнопка подключенная к классу .cs -->
        <td class="auto-style1"></td>
    </tr>
</table>
    </form>
            </body>
</html>
