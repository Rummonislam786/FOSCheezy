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
            visibility: hidden;
            opacity: 0;
            transition: .3s ease-in;
        }

        .card-img {
            transition: .3s;
        }

        .card-text {
            visibility: hidden;
            opacity: 0;
            transition: .3s ease-in-out;
        }

        .card:hover {
            cursor: pointer;
        }

            .card:hover .card-text {
                visibility: visible;
                opacity: 1;
            }

            .card:hover .card-title {
                visibility: visible;
                opacity: 1;
            }

            .card:hover .card-img {
                opacity: 0.5;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="book_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <h2>Blog</h2>
            </div>
            <div class="row">
                <div class="card bg-dark text-white" style="width: 370px; height: 370px;">
                    <img class="card-img" src="../TemplateFiles/images/Blog.jpeg" alt="Card image" style="width: 100%; height: 100%;">
                    <div class="card-img-overlay">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>

                    </div>
                </div>
                <div class="col">
                    <div class="card bg-dark text-white" style="width: 370px; height: 180px; overflow: hidden; margin-bottom: 10px; object-fit: cover;">
                        <img class="card-img" src="../TemplateFiles/images/award.jpg" alt="Card image" style="height: 100%">
                        <div class="card-img-overlay">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                        </div>
                    </div>

                    <div class="card bg-dark text-white" style="width: 370px; height: 180px; overflow: hidden;">
                        <img class="card-img" src="../TemplateFiles/images/award2.jpg" alt="Card image" style="height: 100%">
                        <div class="card-img-overlay">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>

                        </div>
                    </div>
                </div>

                <div class="card bg-dark text-white" style="width: 370px; height: 370px;">
                    <img class="card-img" src="../TemplateFiles/images/o1.jpg" alt="Card image">
                    <div class="card-img-overlay">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="container">
            <div class="card mb-3" style="max-width: 1200px; height:200px; overflow:hidden">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="../TemplateFiles/images/award.jpg" class="img-fluid rounded-start" style="height:100%; width:100%;">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5>Card title</h5>
                            <p>This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            <a href="#" class="btn btn-primary text-end" style="margin-top:25px">Go somewhere</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card mb-3" style="max-width: 1200px; height:200px; overflow:hidden">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="../TemplateFiles/images/award2.jpg" class="img-fluid rounded-start" style="height:100%; width:100%;">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5>Card title</h5>
                            <p>This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            <a href="#" class="btn btn-primary text-end" style="margin-top:25px">Go somewhere</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card mb-3" style="max-width: 1200px; height:200px; overflow:hidden">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="../TemplateFiles/images/o1.jpg" class="img-fluid rounded-start" style="height:100%; width:100%;">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5>Card title</h5>
                            <p>This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            <a href="#" class="btn btn-primary text-end" style="margin-top:25px">Go somewhere</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card mb-3" style="max-width: 1200px; height:200px; overflow:hidden">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="../TemplateFiles/images/o1.jpg" class="img-fluid rounded-start" style="height:100%; width:100%;">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5>Card title</h5>
                            <p>This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            <a href="#" class="btn btn-primary text-end" style="margin-top:25px">Go somewhere</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
