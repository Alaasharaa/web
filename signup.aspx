<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="soha.signup" %>

<!DOCTYPE html>
<!--=== Coding by CodingLab | www.codinglabweb.com === -->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!----======== CSS ======== -->
    <link rel="stylesheet" href="stylee.css">
     
    <!----===== Iconscout CSS ===== -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <link rel="stylesheet" href="main.js">

    <title>Responsive Regisration Form </title> 
</head>
<body>
    <div class="container">
        <header>Registration</header>

        <form method="post" runat="server">
            <div class="form first">
                <div class="details personal">
                    <span class="title">Personal Details</span>

                    <div class="fields">
                        <div class="input-field">
                            <label>Child's Full Name</label>
                            <input type="text" name="fullname" placeholder="Enter child name" required>
                        </div>

                        <div class="input-field">
                            <label>Date of Birth</label>
                            <input type="date" name="birth" placeholder="Enter birth date" required>
                        </div>

                        <div class="input-field">
                            <label>Email</label>
                            <input type="email" name="email" placeholder="Enter your email" required>
                        </div>


                        <div class="input-field">
                            <label>Child Gender</label>
                            <select required name="gender">
                                
                                <option value="male">Male</option>
                                <option value="female">Female</option>
                                
                            </select>
                        </div>

                        <div class="input-field">
                            <label>Language you want your child to learn</label>
                            <select required name="language">
                                
                                <option value="english">English</option>
                              
                                
                            </select>
                        </div>
                            <div class="input-field">
                                <label>What is his level?</label>
                                <select required name="level">
                                    
                                    <option value="beginner">Beginner</option>
                                    <option value="intermediate">Intermediate</option>
                                    <option value="advanced">Advanced</option>
                                  
                                    
                                </select>
                            
                        </div>
                         <div class="input-field">
                            <label>Password</label>
                            <input required type="password" name="password" id="kid_phone" class="input-text" aria-required="true">
                        </div>
                    </div>
                </div>

                <div class="details family">
                    <span class="title">Family Details</span>

                    <div class="fields">
                        <div class="input-field">
                            <label>Father's Full Name</label>
                            <input type="text" name="fathername" placeholder="Enter father name" required>
                        </div>

                        <div class="input-field">
                            <label>Mother's Full Name</label>
                            <input type="text" name="mothername" placeholder="Enter mother name" required>
                        </div>

                       
                        <div class="input-field">
                            <label>The supervisor</label>
                            <input type="text" name="supervisor" placeholder="Mother or Father or..." required>
                        </div>

                        <div class="input-field">
                            <label>The number with the international code</label>
                            <input required="" for="kid_phone" type="text" name="phone" id="kid_phone" class="input-text" aria-required="true">
                        </div>



                        <div class="input-field">
                            <label>Additional information about your child's residence</label>
                            <textarea  for="address" type="text" name="address" id="address" rows="10" cols="40" aria-required="true"></textarea>
                        </div>
                    </div>

                    <asp:Button ID="Button1" cssClass="sumbit" runat="server" Text="Register" OnClick="Button1_Click" />
              
                    </div>
                
                </div> 
            </form>
     </div>
    
    <!--<script src="script.js"></script>-->
</body>
</html>
