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
        .img-fluid{
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
            -moz-transform: inherit;
            -ms-transform: inherit;
            -o-transform: inherit;
            -webkit-transform: inherit;
            transform: scale(1.2);
        }
        .card:hover .img-fluid
        {
            transform: scale(1.1);
        }
        .btn-primary {
            background-color: #ffbe33;
            border-color: #ffbe33;
        }
        .btn-primary:hover {
            background-color: #e69c00;
            border-color: #e69c00;
        }
        @import url("https://fonts.googleapis.com/css2?family=Baloo+2&display=swap");
$main-green: #79dd09 !default;
$main-green-rgb-015: rgba(121, 221, 9, 0.1) !default;
$main-yellow: #bdbb49 !default;
$main-yellow-rgb-015: rgba(189, 187, 73, 0.1) !default;
$main-red: #bd150b !default;
$main-red-rgb-015: rgba(189, 21, 11, 0.1) !default;
$main-blue: #0076bd !default;
$main-blue-rgb-015: rgba(0, 118, 189, 0.1) !default;

/* This pen */
body {
	font-family: "Baloo 2", cursive;
	font-size: 16px;
	color: #ffffff;
	text-rendering: optimizeLegibility;
	font-weight: initial;
}

.dark {
	background: #110f16;
}


.light {
	background: #f3f5f7;
}

a, a:hover {
	text-decoration: none;
	transition: color 0.3s ease-in-out;
}

#pageHeaderTitle {
	margin: 2rem 0;
	text-transform: uppercase;
	text-align: center;
	font-size: 2.5rem;
}

/* Cards */
.postcard {
  flex-wrap: wrap;
  display: flex;
  
  box-shadow: 0 4px 21px -12px rgba(0, 0, 0, 0.66);
  border-radius: 10px;
  margin: 0 0 2rem 0;
  overflow: hidden;
  position: relative;
  color: #ffffff;

	&.dark {
		background-color: #18151f;
	}
	&.light {
		background-color: #e1e5ea;
	}
	
	.t-dark {
		color: #18151f;
	}
	
  a {
    color: inherit;
  }
	
	h1,	.h1 {
		margin-bottom: 0.5rem;
		font-weight: 500;
		line-height: 1.2;
	}
	
	.small {
		font-size: 80%;
	}

  .postcard__title {
    font-size: 1.75rem;
  }

  .postcard__img {
    max-height: 180px;
    width: 100%;
    object-fit: cover;
    position: relative;
  }

  .postcard__img_link {
    display: contents;
  }

  .postcard__bar {
    width: 50px;
    height: 10px;
    margin: 10px 0;
    border-radius: 5px;
    background-color: #424242;
    transition: width 0.2s ease;
  }

  .postcard__text {
    padding: 1.5rem;
    position: relative;
    display: flex;
    flex-direction: column;
  }

  .postcard__preview-txt {
    overflow: hidden;
    text-overflow: ellipsis;
    text-align: justify;
    height: 100%;
  }

  .postcard__tagbox {
    display: flex;
    flex-flow: row wrap;
    font-size: 14px;
    margin: 20px 0 0 0;
		padding: 0;
    justify-content: center;

    .tag__item {
      display: inline-block;
      background: rgba(83, 83, 83, 0.4);
      border-radius: 3px;
      padding: 2.5px 10px;
      margin: 0 5px 5px 0;
      cursor: default;
      user-select: none;
      transition: background-color 0.3s;

      &:hover {
        background: rgba(83, 83, 83, 0.8);
      }
    }
  }

  &:before {
    content: "";
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background-image: linear-gradient(-70deg, #424242, transparent 50%);
    opacity: 1;
    border-radius: 10px;
  }

  &:hover .postcard__bar {
    width: 100px;
  }
}

@media screen and (min-width: 769px) {
  .postcard {
    flex-wrap: inherit;

    .postcard__title {
      font-size: 2rem;
    }

    .postcard__tagbox {
      justify-content: start;
    }

    .postcard__img {
      max-width: 300px;
      max-height: 100%;
      transition: transform 0.3s ease;
    }

    .postcard__text {
      padding: 3rem;
      width: 100%;
    }

    .media.postcard__text:before {
      content: "";
      position: absolute;
      display: block;
      background: #18151f;
      top: -20%;
      height: 130%;
      width: 55px;
    }

    &:hover .postcard__img {
      transform: scale(1.1);
    }

    &:nth-child(2n+1) {
      flex-direction: row;
    }

    &:nth-child(2n+0) {
      flex-direction: row-reverse;
    }

    &:nth-child(2n+1) .postcard__text::before {
      left: -12px !important;
      transform: rotate(4deg);
    }

    &:nth-child(2n+0) .postcard__text::before {
      right: -12px !important;
      transform: rotate(-4deg);
    }
  }
}
@media screen and (min-width: 1024px){
		.postcard__text {
      padding: 2rem 3.5rem;
    }
		
		.postcard__text:before {
      content: "";
      position: absolute;
      display: block;
      
      top: -20%;
      height: 130%;
      width: 55px;
    }
	
  .postcard.dark {
		.postcard__text:before {
			background: #18151f;
		}
  }
	.postcard.light {
		.postcard__text:before {
			background: #e1e5ea;
		}
  }
}

/* COLORS */
.postcard .postcard__tagbox .green.play:hover {
	background: $main-green;
	color: black;
}
.green .postcard__title:hover {
	color: $main-green;
}
.green .postcard__bar {
	background-color: $main-green;
}
.green::before {
	background-image: linear-gradient(
		-30deg,
		$main-green-rgb-015,
		transparent 50%
	);
}
.green:nth-child(2n)::before {
	background-image: linear-gradient(30deg, $main-green-rgb-015, transparent 50%);
}

.postcard .postcard__tagbox .blue.play:hover {
	background: $main-blue;
}
.blue .postcard__title:hover {
	color: $main-blue;
}
.blue .postcard__bar {
	background-color: $main-blue;
}
.blue::before {
	background-image: linear-gradient(-30deg, $main-blue-rgb-015, transparent 50%);
}
.blue:nth-child(2n)::before {
	background-image: linear-gradient(30deg, $main-blue-rgb-015, transparent 50%);
}

.postcard .postcard__tagbox .red.play:hover {
	background: $main-red;
}
.red .postcard__title:hover {
	color: $main-red;
}
.red .postcard__bar {
	background-color: $main-red;
}
.red::before {
	background-image: linear-gradient(-30deg, $main-red-rgb-015, transparent 50%);
}
.red:nth-child(2n)::before {
	background-image: linear-gradient(30deg, $main-red-rgb-015, transparent 50%);
}

.postcard .postcard__tagbox .yellow.play:hover {
	background: $main-yellow;
	color: black;
}
.yellow .postcard__title:hover {
	color: $main-yellow;
}
.yellow .postcard__bar {
	background-color: $main-yellow;
}
.yellow::before {
	background-image: linear-gradient(
		-30deg,
		$main-yellow-rgb-015,
		transparent 50%
	);
}
.yellow:nth-child(2n)::before {
	background-image: linear-gradient(
		30deg,
		$main-yellow-rgb-015,
		transparent 50%
	);
}

@media screen and (min-width: 769px) {
	.green::before {
		background-image: linear-gradient(
			-80deg,
			$main-green-rgb-015,
			transparent 50%
		);
	}
	.green:nth-child(2n)::before {
		background-image: linear-gradient(
			80deg,
			$main-green-rgb-015,
			transparent 50%
		);
	}

	.blue::before {
		background-image: linear-gradient(
			-80deg,
			$main-blue-rgb-015,
			transparent 50%
		);
	}
	.blue:nth-child(2n)::before {
		background-image: linear-gradient(80deg, $main-blue-rgb-015, transparent 50%);
	}

	.red::before {
		background-image: linear-gradient(-80deg, $main-red-rgb-015, transparent 50%);
	}
	.red:nth-child(2n)::before {
		background-image: linear-gradient(80deg, $main-red-rgb-015, transparent 50%);
	}
	
	.yellow::before {
		background-image: linear-gradient(
			-80deg,
			$main-yellow-rgb-015,
			transparent 50%
		);
	}
	.yellow:nth-child(2n)::before {
		background-image: linear-gradient(
			80deg,
			$main-yellow-rgb-015,
			transparent 50%
		);
	}
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
                <div class="card bg-dark text-white" style="width: 370px; height: 370px; overflow: hidden;">
                    <img class="card-img" src="../TemplateFiles/images/family-meals.jpg" alt="Card image" style="width:430px; height: 370px;">
                    <div class="card-img-overlay">
                        <h5 class="card-title">Does eating breakfast with your own family helps you set the mood for the day?</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>

                    </div>
                </div>
                <div class="col">
                    <div class="card bg-dark text-white" style="width: 370px; height: 180px; overflow: hidden; margin-bottom: 10px; object-fit: cover;">
                        <img class="card-img" src="../TemplateFiles/images/award.jpg" alt="Card image" style="height: 100%">
                        <div class="card-img-overlay">
                            <h5 class="card-title">The Employee of The Year Award Ceremony</h5>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                        </div>
                    </div>

                    <div class="card bg-dark text-white" style="width: 370px; height: 180px; overflow: hidden;">
                        <img class="card-img" src="../TemplateFiles/images/award2.jpg" alt="Card image" style="height: 100%">
                        <div class="card-img-overlay">
                            <h5 class="card-title">Best Brand Award Ceremony</h5>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>

                        </div>
                    </div>
                </div>

                <div class="card bg-dark text-white" style="width: 370px; height: 370px; overflow: hidden;">
                    <img class="card-img" src="../TemplateFiles/images/o1.jpg" alt="Card image">
                    <div class="card-img-overlay">
                        <h5 class="card-title">10% Discount Voucher</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="container">
            <%--<div class="card mb-3" style="max-width: 1200px; height:200px; overflow:hidden">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="../TemplateFiles/images/award.jpg" class="img-fluid rounded-start" style="height:100%; width:100%;">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5>The Employee of The Year Award Ceremony</h5>
                            <p>This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            <a href="#" class="btn btn-primary text-end" style="margin-top:25px">See More...</a>
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
                            <h5>Best Brand Award Ceremony</h5>
                            <p>This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            <a href="#" class="btn btn-primary text-end" style="margin-top:25px">See More...</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card mb-3" style="max-width: 1200px; height:200px; overflow:hidden">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="../TemplateFiles/images/family-meals.jpg" class="img-fluid rounded-start" style="height:100%; width:100%;">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5>Does eating breakfast with your family helps you set the mood for the day?</h5>
                            <p>This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            <a href="#" class="btn btn-primary text-end" style="margin-top:25px">See More...</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card mb-3" style="max-width: 1200px; height:200px; overflow:hidden">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="../TemplateFiles/images/o12.jpg" class="img-fluid rounded-start" style=" height:200px; width:100%;">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5>10% Discount Voucher</h5>
                            <p>This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            <a href="#" class="btn btn-primary text-end" style="margin-top:25px">See More...</a>
                        </div>
                    </div>
                </div>
            </div>--%>

        <article class="postcard dark blue">
			<a class="postcard__img_link" href="#">
				<img class="postcard__img" src="../TemplateFiles/images/award.jpg" alt="Image Title" />
			</a>
			<div class="postcard__text">
				<h1 class="postcard__title blue"><a href="#">The Employee of The Year Award Ceremony</a></h1>
				<div class="postcard__subtitle small">
					<time datetime="2020-05-25 12:00:00">
						<i class="fas fa-calendar-alt mr-2"></i>Mon, May 25th 2020
					</time>
				</div>
				<div class="postcard__bar"></div>
				<div class="postcard__preview-txt">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi, fugiat asperiores inventore beatae accusamus odit minima enim, commodi quia, doloribus eius! Ducimus nemo accusantium maiores velit corrupti tempora reiciendis molestiae repellat vero. Eveniet ipsam adipisci illo iusto quibusdam, sunt neque nulla unde ipsum dolores nobis enim quidem excepturi, illum quos!</div>
				<ul class="postcard__tagbox">
					<li class="tag__item"><i class="fas fa-tag mr-2"></i>Award</li>
					<li class="tag__item"><i class="fas fa-clock mr-2"></i>55 mins.</li>	
				</ul>
			</div>
		</article>
            <article class="postcard dark red">
			<a class="postcard__img_link" href="#">
				<img class="postcard__img" src="../TemplateFiles/images/award2.jpg" alt="Image Title" />	
			</a>
			<div class="postcard__text">
				<h1 class="postcard__title red"><a href="#">Best Brand Award Ceremony</a></h1>
				<div class="postcard__subtitle small">
					<time datetime="2020-05-25 12:00:00">
						<i class="fas fa-calendar-alt mr-2"></i>Mon, May 25th 2020
					</time>
				</div>
				<div class="postcard__bar"></div>
				<div class="postcard__preview-txt">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi, fugiat asperiores inventore beatae accusamus odit minima enim, commodi quia, doloribus eius! Ducimus nemo accusantium maiores velit corrupti tempora reiciendis molestiae repellat vero. Eveniet ipsam adipisci illo iusto quibusdam, sunt neque nulla unde ipsum dolores nobis enim quidem excepturi, illum quos!</div>
				<ul class="postcard__tagbox">
					<li class="tag__item"><i class="fas fa-tag mr-2"></i>Award</li>
					<li class="tag__item"><i class="fas fa-clock mr-2"></i>55 mins.</li>
					
				</ul>
			</div>
		</article>
            <article class="postcard dark blue">
	<a class="postcard__img_link" href="#">
		<img class="postcard__img" src="../TemplateFiles/images/family-meals.jpg" alt="Image Title" />
	</a>
	<div class="postcard__text">
		<h1 class="postcard__title blue"><a href="#">Does eating breakfast with your family helps you set the mood for the day?</a></h1>
		<div class="postcard__subtitle small">
			<time datetime="2020-05-25 12:00:00">
				<i class="fas fa-calendar-alt mr-2"></i>Mon, May 25th 2020
			</time>
		</div>
		<div class="postcard__bar"></div>
		<div class="postcard__preview-txt">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi, fugiat asperiores inventore beatae accusamus odit minima enim, commodi quia, doloribus eius! Ducimus nemo accusantium maiores velit corrupti tempora reiciendis molestiae repellat vero. Eveniet ipsam adipisci illo iusto quibusdam, sunt neque nulla unde ipsum dolores nobis enim quidem excepturi, illum quos!</div>
		<ul class="postcard__tagbox">
			<li class="tag__item"><i class="fas fa-tag mr-2"></i>Award</li>
			
		</ul>
	</div>
</article>
    <article class="postcard dark red">
	<a class="postcard__img_link" href="#">
		<img class="postcard__img" src="../TemplateFiles/images/o1.jpg" alt="Image Title" />	
	</a>
	<div class="postcard__text">
		<h1 class="postcard__title red"><a href="#">10% Discount Voucher</a></h1>
		<div class="postcard__subtitle small">
			<time datetime="2020-05-25 12:00:00">
				<i class="fas fa-calendar-alt mr-2"></i>Mon, May 25th 2020
			</time>
		</div>
		<div class="postcard__bar"></div>
		<div class="postcard__preview-txt">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi, fugiat asperiores inventore beatae accusamus odit minima enim, commodi quia, doloribus eius! Ducimus nemo accusantium maiores velit corrupti tempora reiciendis molestiae repellat vero. Eveniet ipsam adipisci illo iusto quibusdam, sunt neque nulla unde ipsum dolores nobis enim quidem excepturi, illum quos!</div>
		<ul class="postcard__tagbox">
			<li class="tag__item"><i class="fas fa-tag mr-2"></i>Food</li>
			
			
		</ul>
	</div>
</article>
        </div>
    </section>
</asp:Content>
