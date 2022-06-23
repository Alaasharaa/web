<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login_admin.aspx.cs" Inherits="soha.login_admin" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login Panel</title>
    <link rel="stylesheet" href="./css/AdminPage.css">
</head>
<body>
 
 <div class="adminContainer">
<div class="myform">

<form>
<h2>ADMIN LOGIN</h2>
<input type="text" name="username" placeholder="Admin Name">
<input type="password" name="password" placeholder="Password">
    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
</form>

</div>
<div class="image">
    <img src="./images/xps-13-laptop.webp" width="300px">

</div>

 </div>
 


</body>
</html>