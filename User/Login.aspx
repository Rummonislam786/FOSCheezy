<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FOSCheezy.User.Login" %>


<head>
    <meta charset="UTF-8">
    <title>Simple Login Form Example</title>
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Rubik:400,700'>
    <link rel="stylesheet" href="./style.css">
    <script>
        string myinput = document.getElementById("username1").innerText;
        string myinput2 = document.getElementById("password1").innerText;

        document.getElementById("signin").onclick = function () {
            Console.log(myinput);
            Console.log(myinput2);
            if (myinput == "Rummon" || myinput2 == "12345") {
                window.location.href = "http://www.w3schools.com";
            }
        };
    </script>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            -webkit-font-smoothing: antialiased;
        }

        body {
            background: #ff8000;
            font-family: 'Rubik', sans-serif;
        }

        .login-form {
            background: #fff;
            width: 500px;
            margin: 65px auto;
            display: -webkit-box;
            display: flex;
            -webkit-box-orient: vertical;
            -webkit-box-direction: normal;
            flex-direction: column;
            border-radius: 4px;
            box-shadow: 0 2px 25px rgba(0, 0, 0, 0.2);
        }

            .login-form h1 {
                padding: 35px 35px 0 35px;
                font-weight: 300;
            }

            .login-form .content {
                padding: 35px;
                text-align: center;
            }

            .login-form .input-field {
                padding: 12px 5px;
            }

                .login-form .input-field input {
                    font-size: 16px;
                    display: block;
                    font-family: 'Rubik', sans-serif;
                    width: 100%;
                    padding: 10px 1px;
                    border: 0;
                    border-bottom: 1px solid #747474;
                    outline: none;
                    -webkit-transition: all .2s;
                    transition: all .2s;
                }

                    .login-form .input-field input::-webkit-input-placeholder {
                        text-transform: uppercase;
                    }

                    .login-form .input-field input::-moz-placeholder {
                        text-transform: uppercase;
                    }

                    .login-form .input-field input:-ms-input-placeholder {
                        text-transform: uppercase;
                    }

                    .login-form .input-field input::-ms-input-placeholder {
                        text-transform: uppercase;
                    }

                    .login-form .input-field input::placeholder {
                        text-transform: uppercase;
                    }

                    .login-form .input-field input:focus {
                        border-color: #222;
                    }

            .login-form a.link {
                text-decoration: none;
                color: #747474;
                letter-spacing: 0.2px;
                text-transform: uppercase;
                display: inline-block;
                margin-top: 20px;
            }

            .login-form .action {
                display: -webkit-box;
                display: flex;
                -webkit-box-orient: horizontal;
                -webkit-box-direction: normal;
                flex-direction: row;
            }

                .login-form .action button {
                    width: 100%;
                    border: none;
                    padding: 18px;
                    font-family: 'Rubik', sans-serif;
                    cursor: pointer;
                    text-transform: uppercase;
                    background: #e8e9ec;
                    color: #777;
                    border-bottom-left-radius: 4px;
                    border-bottom-right-radius: 0;
                    letter-spacing: 0.2px;
                    outline: 0;
                    -webkit-transition: all .3s;
                    transition: all .3s;
                }

                    .login-form .action button:hover {
                        background: #d8d8d8;
                    }

                    .login-form .action button:nth-child(2) {
                        background: #2d3b55;
                        color: #fff;
                        border-bottom-left-radius: 0;
                        border-bottom-right-radius: 4px;
                    }

                        .login-form .action button:nth-child(2):hover {
                            background: #3c4d6d;
                        }
    </style>
</head>
<body>
    <!-- partial:index.partial.html -->
    <div class="login-form">
        <form>
            <h1>Login</h1>
            <div class="content">
                <div class="input-field">
                <input id="username1" type="text" placeholder="Username" autocomplete="nope" >
                </div>
                <div class="input-field">
                    <input id="password1" type="password" placeholder="Password" autocomplete="new-password" >
                </div>
                <a href="#" class="link">Forgot Your Password?</a>
            </div>
            <div class="action">
                <button href="~/User/Signup.aspx">Register</button>
                <button href="~/Admin/Dashboard.aspx">Sign In</button>
            </div>
        </form>
    </div>
</body>

