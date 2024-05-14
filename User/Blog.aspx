<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="FOSCheezy.User.Blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .card {
            max-width: 500px;
            margin: 0 auto;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
        }

        .card-title {
            font-weight: bold;
        }

        .card-footer {
            background-color: #f8f9fa;
            border-top: 1px solid #dee2e6;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="book_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <h2>Blog</h2>
            </div>
            <div class="row align-items-stretch retro-layout">
                <div class="col-md-4">
                    <a href="single.html" class="h-entry mb-30 v-height gradient">
                        <div class="featured-img" style="background-image: url('../TemplateFiles/images/client1.jpg');"></div>
                        <div class="text">
                            <span class="date">Apr. 14th, 2022</span>
                            <h2>AI can now kill those annoying cookie pop-ups</h2>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
