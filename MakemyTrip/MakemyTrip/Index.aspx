﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="MakemyTrip.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Make my Trip</title>
    <link rel="stylesheet" href="style.css">

    <style>
    
    @import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}
html,body{
  display: grid;
  height: 100%;
  width: 100%;
  place-items: center;
  background-image: url("images/background.jpg");
  background-size:100%;
  /* background: linear-gradient(-135deg, #c850c0, #4158d0); */
}
::selection{
  background: #4158d0;
  color: #fff;
}
.wrapper{
  width: 380px;
  background: #fff;
  border-radius: 15px;
  box-shadow: 0px 15px 20px rgba(0,0,0,0.1);
}
.wrapper .title{
  font-size: 35px;
  font-weight: 600;
  text-align: center;
  line-height: 100px;
  color: #fff;
  user-select: none;
  border-radius: 15px 15px 0 0;
  background: #f15d30;
}
.wrapper form{
  padding: 10px 30px 50px 30px;
}
.wrapper form .field{
  height: 50px;
  width: 100%;
  margin-top: 20px;
  position: relative;
}
.wrapper form .field input{
  height: 100%;
  width: 100%;
  outline: none;
  font-size: 17px;
  padding-left: 20px;
  border: 1px solid lightgrey;
  border-radius: 25px;
  transition: all 0.3s ease;
}
.wrapper form .field input:focus,
form .field input:valid{
  border-color: #4158d0;
}
.wrapper form .field label{
  position: absolute;
  top: 50%;
  left: 20px;
  color: #999999;
  font-weight: 400;
  font-size: 17px;
  pointer-events: none;
  transform: translateY(-50%);
  transition: all 0.3s ease;
}
form .field input:focus ~ label,
form .field input:valid ~ label{
  top: 0%;
  font-size: 16px;
  color: #4158d0;
  background: #fff;
  transform: translateY(-50%);
}
form .content{
  display: flex;
  width: 100%;
  height: 50px;
  font-size: 16px;
  align-items: center;
  justify-content: space-around;
}
form .content .checkbox{
  display: flex;
  align-items: center;
  justify-content: center;
}
form .content input{
  width: 15px;
  height: 15px;
  background: red;
}
form .content label{
  color: #262626;
  user-select: none;
  padding-left: 5px;
}
form .content .pass-link{
  color: "";
}
form .field input[type="submit"]{
  color: #fff;
  border: none;
  padding-left: 0;
  margin-top: -10px;
  font-size: 20px;
  font-weight: 500;
  cursor: pointer;
  background: #f15d30;
  transition: all 0.3s ease;
}
form .field input[type="submit"]:active{
  transform: scale(0.95);
}
form .signup-link{
  color: #262626;
  margin-top: 20px;
  text-align: center;
}
form .pass-link a,
form .signup-link a{
  color: #4158d0;
  text-decoration: none;
}
form .pass-link a:hover,
form .signup-link a:hover{
  text-decoration: underline;
}
</style>
    </head>
<body>
   
       
     <div class="wrapper">
         <form runat="server">
         <div class="title">
            Login Form
         </div>
         
            <div class="field">
                <asp:textbox id="Email_signin" maxlength="50" placeholder="example@someone.com" runat="server" textmode="email" required/> 
               
            </div>
            <div class="field">
                <asp:textbox id="Password_signin"  placeholder="*******" runat="server" textmode="password" required/>
               
            </div>
            <div class="content">
              
              
               <div class="pass-link">
                  <a href="Forgot_Password.aspx">Forgot password?</a>
               </div>
            </div>
            <div class="field">
                <asp:button class="submit" id="btn_signin" runat="server" text="sign in" onclick="signin"  />
            </div>
            <div class="signup-link">
               Not a member? <a href="Signup.aspx">Signup now</a>
            </div>
         </form>
      </div>

       
</body>
</html>
