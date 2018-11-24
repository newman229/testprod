<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="testproduct.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link  type="text/css" rel="stylesheet" href="/Content/css/reg_style.css" />
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
<body style="background-color:#464f5b">
        <header>
	<div class="header-right">
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
<form id="form3" runat="server"> <!-- Создание формы -->
    <div>
         <table border="0"; cellpadding="0"; cellspacing="0";> 
        <tr>
            <th colspan="3"  style="background-color: yellow; text-align:center; "> 
                Registration
            </th>
        </tr>
        <tr>
            <td class="colum1">
                Firstname </td>                    <!-- Опишу только здесь действия, все остальные строки аналогичны, первый столбец - имя -->
            <td class="colum2">
                <asp:TextBox ID="txtFirstname" placeholder="Your Name" runat="server" />  <!-- Создаем текстбокс для ввода имени с подсказкой(холдэ) -->
            </td>
           <td>
               <asp:Label ID="require1" runat="server"> <!-- Создаем в лейбле и в него добавляем валидаторы на наличие надписи в текстбоксе и на соблюдение условий -->
                 <asp:RequiredFieldValidator Font-Size="11px" Display="Dynamic" ErrorMessage="<img src='Content/Images/no!.gif'/> Please Enter your Name" ForeColor="Red" ControlToValidate="txtFirstname"
                     runat="server" />
                   <asp:RegularExpressionValidator runat="server" Font-Size="11px" Display="Dynamic" ForeColor="Red" ErrorMessage="<img src='Content/Images/no!.gif'/> Firstname must be 2-100 symbols" ControlToValidate="txtFirstname" ValidationExpression="^([\S\s]{2,100})$" />
               </asp:Label>
          </td>
        </tr>
        <tr>
            <td class="colum1">Surname  
            </td> 
               <td class="colum2">
                  <asp:TextBox ID="txtSurname" placeholder="Your Surname" runat="server" /> 
               </td>
           <td>
               <asp:Label ID="require2" runat="server"> 
                 <asp:RequiredFieldValidator Font-Size="11px" Display="Dynamic" ErrorMessage="<img src='Content/Images/no!.gif'/> Please Enter your Surname" ForeColor="Red" ControlToValidate="txtSurname"
                     runat="server" />
                   <asp:RegularExpressionValidator runat="server" Font-Size="11px" Display="Dynamic" ForeColor="Red" ErrorMessage="<img src='Content/Images/no!.gif'/> Surname must be 2-100 symbols" ControlToValidate="txtSurname" ValidationExpression="^([\S\s]{2,100})$" />
               </asp:Label>
          </td>
           </tr>
         <tr>
            <td class="colum1">Gender 
            </td>
              <td class="colum2" ><asp:DropDownList ID="ddlGender" runat="server"> 
               <asp:ListItem>Male</asp:ListItem><asp:ListItem>Female</asp:ListItem></asp:DropDownList> 
              </td>
              <td>
                <asp:RequiredFieldValidator Font-Size="11px" ErrorMessage="" ForeColor="Red" ControlToValidate="ddlGender" runat="server" />
             </td>
         </tr>
        <tr>
            <td class="colum1">Phone  
            </td>
            <td class="colum2" >
                 <asp:TextBox ID="txtPhone" placeholder="Your Phone number" runat="server" /> 
            </td>
           <td>
               <asp:Label ID="require3" runat="server"> 
                 <asp:RequiredFieldValidator Font-Size="11px" Display="Dynamic" ErrorMessage="<img src='Content/Images/no!.gif'/> Please Enter your phone number" ForeColor="Red" ControlToValidate="txtPhone"
                     runat="server" />
                   <asp:RegularExpressionValidator runat="server" Font-Size="11px" Display="Dynamic" ForeColor="Red" ErrorMessage="<img src='Content/Images/no!.gif'/> Invalid phone number" ControlToValidate="txtPhone" ValidationExpression="^([\d]{6,13})$" />
               </asp:Label>
          </td>
         </tr>
       <tr>
        <td class="colum1">Address 
         </td>
           <td class="colum2" >
                <asp:TextBox ID="txtAddress" runat ="server" placeholder="Your Address" TextMode="MultiLine" /> 
           </td>
           <td>
               <asp:Label ID="require4" runat="server"> 
                 <asp:RequiredFieldValidator Font-Size="11px" Display="Dynamic" ErrorMessage="<img src='Content/Images/no!.gif'/> Please Enter your Address" ForeColor="Red" ControlToValidate="txtAddress"
                     runat="server" />
                   <asp:RegularExpressionValidator runat="server" Font-Size="11px" Display="Dynamic" ForeColor="Red" ErrorMessage="<img src='Content/Images/no!.gif'/> Invalid address. Minimum-10symbols,Maximum-150" ControlToValidate="txtAddress" ValidationExpression="^[\s\S]{10,150}$" />
               </asp:Label>
          </td>
        </tr>
       <tr>
           <td class="colum1">Username 
            </td>
            <td class="colum2"><asp:TextBox ID="txtUsername" placeholder="Your Username(login)" runat="server"></asp:TextBox> 
            </td>
           <td>
               <asp:Label ID="require5" runat="server"> 
                 <asp:RequiredFieldValidator Font-Size="11px" Display="Dynamic" ErrorMessage="<img src='Content/Images/no!.gif'/> Please Enter your name" ForeColor="Red" ControlToValidate="txtUsername"
                     runat="server" />
                   <asp:RegularExpressionValidator runat="server" Font-Size="11px" Display="Dynamic" ForeColor="Red" ErrorMessage="<img src='Content/Images/no!.gif'/> Username must be 4-15 symbols" ControlToValidate="txtUsername" ValidationExpression="^([\S\s]{4,15})$" />
               </asp:Label>
          </td>
        </tr>
       <tr>
           <td class="colum1">Email 
            </td>
            <td class="colum2"><asp:TextBox ID="txtEmail" placeholder="Your Email" runat="server"></asp:TextBox> 
            </td>
           <td>
               <asp:Label ID="require6" runat="server"> 
                 <asp:RequiredFieldValidator Font-Size="11px" Display="Dynamic" ErrorMessage="<img src='Content/Images/no!.gif'/> Please Enter your email" ForeColor="Red" ControlToValidate="txtEmail"
                     runat="server" />
                   <asp:RegularExpressionValidator runat="server" Font-Size="11px" Display="Dynamic" ForeColor="Red" ErrorMessage="<img src='Content/Images/no!.gif'/> Invalid email" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
               </asp:Label>
          </td>
        </tr>
        <tr>
           <td class="colum1">Password
            </td>
            <td class="colum2">
                 <asp:TextBox ID="txtPassword" TextMode="Password" placeholder="Your Password" runat="server"></asp:TextBox>
            </td>
           <td>
               <asp:Label ID="require7" runat="server"> 
                 <asp:RequiredFieldValidator Font-Size="11px" Display="Dynamic" ErrorMessage="<img src='Content/Images/no!.gif'/> Please Enter your Password" ForeColor="Red" ControlToValidate="txtPassword"
                     runat="server" />
                   <asp:RegularExpressionValidator runat="server" Font-Size="11px" Display="Dynamic" ForeColor="Red" ErrorMessage="<img src='Content/Images/no!.gif'/> A password must be 6 at 20 characters including uppercase,lowercase and digits" ControlToValidate="txtPassword" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$" />
               </asp:Label>
          </td>
        </tr>
         <tr>
            <td class="colum1">Confirm Password 
            </td>
           <td class="colum2">
                <asp:TextBox ID="txtConfirmPassword" runat="server" placeholder="Confirm your password" TextMode="Password"/> 
           </td>
           <td>
               <asp:Label ID="require8" runat="server"> 
                 <asp:CompareValidator Font-Size="11px" Display="Dynamic" ErrorMessage="<img src='Content/Images/no!.gif'/> Do not match" ForeColor="Red" ControlToCompare="txtPassword"
                      ControlToValidate="txtConfirmPassword" runat="server" />
               </asp:Label>
          </td>
        </tr>
         <tr>
            <td class="colum1">
            </td>
           <td class="colum2">
                   <asp:Button runat="server" OnClick="RegisterUser" Text="Sumbit"/>
           </td>
           <td>
          </td>
        </tr>
     </table>
    </div>
    </form>
</body>
</html>
