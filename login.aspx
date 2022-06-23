<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="soha.login" %>

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

<form method="post" runat="server">
<h2>LOGIN</h2>
<input type="text" name="email" placeholder="email">
<input type="password" name="password" placeholder="Password">
    <asp:Button ID="Button1" runat="server" Text="LOGIN" OnClick="Button1_Click" />
</form>

</div>
<div class="image">
    <img src="./images/xps-13-laptop.webp" width="300px">

</div>

 </div>
 


</body>
</html>
