<%@ include file="template\Header.jsp"%>
<title>Bassett Furniture</title>


<style>
.form-control {
    background-color: #090909 !important;
    background-image: none;
    border: none;
    border-radius: 0;
    box-shadow: 0 1px 1px rgba(0,  0,  0,  0.075) inset;
    display: block;
    font-size: 14px;
    height: 34px;
    line-height: 1.42857;
    padding: 6px 12px;
    transition: border-color 0.15s ease-in-out 0s,  box-shadow 0.15s ease-in-out 0s;
    width: 100%;
    color: #inherit !important;
    -webkit-transition: all .8s ease-in-out;
    -moz-transition: all .8s ease-in-out;
    -ms-transition: all .8s ease-in-out;
    transition: all .8s ease-in-out;
    outline: none;
}

.form-control:hover {
    border-color: rgba(100,  00,  00,  0.50);
    background-color: #222222 !important;
    background-image: none;
    color: #inherit !important;
    color: #fff;
    -webkit-box-shadow: 0 0 10px rgba(09,  09,  09,  0.8);
    -moz-box-shadow: 0 0 10px rgba(09,  09,  09,  0.8);
    box-shadow: 0 0 10px rgba(09,  09,  09,  0.8);
}
.form-control:focus {
    border-color: rgba(22,  22,  22,  .75);
    outline: 0;
    outline: thin dotted 9;
    background: #fff !important;
    color: #333 !important;
    -webkit-box-shadow: 0 0 8px rgba(22,  22,  22,  .6);
    -moz-box-shadow: 0 0 8px rgba(22,  22,  22,  .6);
    box-shadow: 0 0 8px rgba(22,  22,  22,  .6);
}

.nocode{
    font-weight:700;
    color:#c7254e;
	font-family: Menlo, Monaco, Consolas, "Courier New", monospace;
}

pre, .nocode{
	font-family: Menlo, Monaco, Consolas, "Courier New", monospace;
}

.prettyprint  code > .atv,
.prettyprint code > .atn,
.prettyprint code > .pun {
	background:#c7254e!important;
	color:#fff!important;
}

blockquote
{
    font-size: 80% !important;
    page-break-inside: avoid;
    border: 3px solid #fff;
    width: 80%;
     -webkit-box-shadow: inset 5px 0px 0px 0px #f60, 8px 8px 8px 2px #888;
        -mox-box-shadow: inset 5px 0px 0px 0px #f60, 8px 8px 8px 2px #888;
         -ms-box-shadow: inset 5px 0px 0px 0px #f60, 8px 8px 8px 2px #888;
             box-shadow: inset 5px 0px 0px 0px #f60, 8px 8px 8px 2px #888;
    
    padding: 10px 20px;
    margin: 0 0 20px;
    font-size: 17.5px;
    border-left: none;
}

.updated{
	display:block;
	position:relative;
	width:100%;
	margin:0;
	padding:.5%;
	text-align:center;
	background:#ededed;
	color:#222222;
}

ins{
	background:#c9302c;
	border-color:#ac2925;
}

.addthis_recommended_vertical{
	background:#c9302c;
	border-color:#ac2925;
}

.mega-dropdown {
  position: static !important;
}
.mega-dropdown-menu {
    padding: 20px 0px;
    width: 100%;
    box-shadow: none;
    -webkit-box-shadow: none;
}
.mega-dropdown-menu > li > ul {
  padding: 0;
  margin: 0;
}
.mega-dropdown-menu > li > ul > li {
  list-style: none;
}
.mega-dropdown-menu > li > ul > li > a {
  display: block;
  color: #222;
  padding: 3px 5px;
}
.mega-dropdown-menu > li ul > li > a:hover,
.mega-dropdown-menu > li ul > li > a:focus {
  text-decoration: none;
}
.mega-dropdown-menu .dropdown-header {
  font-size: 18px;
  color: #ff3546;
  padding: 5px 60px 5px 5px;
  line-height: 30px;
}

.carousel-control {
  width: 30px;
  height: 30px;
  top: -35px;

}
.left.carousel-control {
  right: 30px;
  left: inherit;
}
.carousel-control .glyphicon-chevron-left, 
.carousel-control .glyphicon-chevron-right {
  font-size: 12px;
  background-color: #fff;
  line-height: 30px;
  text-shadow: none;
  color: #333;
  border: 1px solid #ddd;
}

/*
Fade content bs-carousel with hero headers
Code snippet by maridlcrmn (Follow me on Twitter @maridlcrmn) for Bootsnipp.com
Image credits: unsplash.com
*/

/********************************/
/*       Fade Bs-carousel       */
/********************************/
.fade-carousel {
    position: relative;
    height: 100vh;
}
.fade-carousel .carousel-inner .item {
    height: 100vh;
}
.fade-carousel .carousel-indicators > li {
    margin: 0 2px;
    background-color: #f39c12;
    border-color: #f39c12;
    opacity: .7;
}
.fade-carousel .carousel-indicators > li.active {
  width: 10px;
  height: 10px;
  opacity: 1;
}

/********************************/
/*          Hero Headers        */
/********************************/
.hero {
    position: absolute;
    top: 50%;
    left: 50%;
    z-index: 3;
    color: #fff;
    text-align: center;
    text-transform: uppercase;
    text-shadow: 1px 1px 0 rgba(0,0,0,.75);
      -webkit-transform: translate3d(-50%,-50%,0);
         -moz-transform: translate3d(-50%,-50%,0);
          -ms-transform: translate3d(-50%,-50%,0);
           -o-transform: translate3d(-50%,-50%,0);
              transform: translate3d(-50%,-50%,0);
}
.hero h1 {
    font-size: 6em;    
    font-weight: bold;
    margin: 0;
    padding: 0;
}

.fade-carousel .carousel-inner .item .hero {
    opacity: 0;
    -webkit-transition: 2s all ease-in-out .1s;
       -moz-transition: 2s all ease-in-out .1s; 
        -ms-transition: 2s all ease-in-out .1s; 
         -o-transition: 2s all ease-in-out .1s; 
            transition: 2s all ease-in-out .1s; 
}
.fade-carousel .carousel-inner .item.active .hero {
    opacity: 1;
    -webkit-transition: 2s all ease-in-out .1s;
       -moz-transition: 2s all ease-in-out .1s; 
        -ms-transition: 2s all ease-in-out .1s; 
         -o-transition: 2s all ease-in-out .1s; 
            transition: 2s all ease-in-out .1s;    
}

/********************************/
/*            Overlay           */
/********************************/
.overlay {
    position: absolute;
    width: 100%;
    height: 100%;
    z-index: 2;
    background-color: #080d15;
    opacity: .7;
}

/********************************/
/*          Custom Buttons      */
/********************************/
.btn.btn-lg {padding: 10px 40px;}
.btn.btn-hero,
.btn.btn-hero:hover,
.btn.btn-hero:focus {
    color: #f5f5f5;
    background-color: #1abc9c;
    border-color: #1abc9c;
    outline: none;
    margin: 20px auto;
}

/********************************/
/*       Slides backgrounds     */
/********************************/
.fade-carousel .slides .slide-1, 
.fade-carousel .slides .slide-2,
.fade-carousel .slides .slide-3 {
  height: 100vh;
  background-size: cover;
  background-position: center center;
  background-repeat: no-repeat;
}
.fade-carousel .slides .slide-1 {
  background-image: url(https://ununsplash.imgix.net/photo-1416339134316-0e91dc9ded92?q=75&fm=jpg&s=883a422e10fc4149893984019f63c818); 
}
.fade-carousel .slides .slide-2 {
  background-image: url(https://ununsplash.imgix.net/photo-1416339684178-3a239570f315?q=75&fm=jpg&s=c39d9a3bf66d6566b9608a9f1f3765af);
}
.fade-carousel .slides .slide-3 {
  background-image: url(https://ununsplash.imgix.net/photo-1416339276121-ba1dfa199912?q=75&fm=jpg&s=9bf9f2ef5be5cb5eee5255e7765cb327);
}

/********************************/
/*          Media Queries       */
/********************************/
@media screen and (min-width: 980px){
    .hero { width: 980px; }    
}
@media screen and (max-width: 640px){
    .hero h1 { font-size: 4em; }    
}

/*******************************/
/*         Footer Queries      */
/*******************************/
footer,.footer {
  position: absolute;
  bottom: 0;
  width: 100%;
  background:#0c1a1e; min-height:350px; font-family: 'Open Sans', sans-serif;
}
.footerleft { margin-top:50px; padding:0 36px; }
.logofooter { margin-bottom:10px; font-size:25px; color:#fff; font-weight:700;}

.footerleft p { color:#fff; font-size:12px !important; font-family: 'Open Sans', sans-serif; margin-bottom:15px;}
.footerleft p i { width:20px; color:#999;}


.paddingtop-bottom {  margin-top:50px;}
.footer-ul { list-style-type:none;  padding-left:0px; margin-left:2px;}
.footer-ul li { line-height:29px; font-size:12px;}
.footer-ul li a { color:#a0a3a4; transition: color 0.2s linear 0s, background 0.2s linear 0s; }
.footer-ul i { margin-right:10px;}
.footer-ul li a:hover {transition: color 0.2s linear 0s, background 0.2s linear 0s; color:#ff670f; }

.social:hover {
     -webkit-transform: scale(1.1);
     -moz-transform: scale(1.1);
     -o-transform: scale(1.1);
 }
 
 .icon-ul { list-style-type:none !important; margin:0px; padding:0px;}
 .icon-ul li { line-height:75px; width:100%; float:left;}
 .icon { float:left; margin-right:5px;}
 
 
 .copyright { min-height:40px; background-color:#000000;}
 .copyright p { text-align:left; color:#FFF; padding:10px 0; margin-bottom:0px;}
 .heading7 { font-size:21px; font-weight:700; color:#d9d6d6; margin-bottom:22px;}
 .post p { font-size:12px; color:#FFF; line-height:20px;}
 .post p span { display:block; color:#8f8f8f;}
 .bottom_ul { list-style-type:none; float:right; margin-bottom:0px;}
 .bottom_ul li { float:left; line-height:40px;}
 .bottom_ul li:after { content:"/"; color:#FFF; margin-right:8px; margin-left:8px;}
 .bottom_ul li a { color:#FFF;  font-size:12px;}
 
 .navbar{
     border:none;
     border-radius: 0px;
 }
 
 .navbar-footer{
     margin-bottom:0px !important;
     position: static;
     bottom: 0px;
 }
 
 .navbar-footer:after{
     content:"";
     margin:0px auto;
     padding:0px;
 }
</style>
</head>


      <!-- carousel-->  
		<div class="masthead">
            <div class="carousel fade-carousel slide" data-ride="carousel" data-interval="4000" id="bs-carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#bs-carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#bs-carousel" data-slide-to="1"></li>
                    <li data-target="#bs-carousel" data-slide-to="2"></li>
                </ol>
      
                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item slides active">
                        <div class="slide-1"></div>
                            <div class="hero">
                                <hgroup>
                                    <h1>We are creative</h1>        
                                    <h3>Get start your next awesome </h3>
                                </hgroup>
                            
                        </div>
                    </div>
                    <div class="item slides">
                        <div class="slide-2"></div>
                            <div class="hero">        
                                <hgroup>
                                    <h1>We are smart</h1>        
                                    <h3>Get start your next awesome </h3>
                                </hgroup>       
                               
                            </div>
                        </div>
                        <div class="item slides">
                            <div class="slide-3"></div>
                                <div class="hero">        
                                    <hgroup>
                                        <h1>We are amazing</h1>        
                                        <h3>Get start your next awesome </h3>
                                    </hgroup>
                                    
                                </div>
                            </div>
                        </div> 
                    </div>
		        </div>
            </div>
        </div>
          <!-- carousel closed-->  
		<!-- Second Container -->
		<div class="container-fluid bg-2 text-center">
			<div class="col-sm-4">
				<h6></h6><b class="heading" style="font-size:40px;color: #ffffff;text-shadow:2px 2px 4px  #ffffff;" >Bassett Furniture</b>
				
				
				
				<p><em> Our online furniture range includes sofas, beds, dining tables,  wardrobes, dressing tables, and lots more. All our wooden furniture designs are available online at Bassettfurniture.com. On our portal, you can browse as many furniture designs across categories as you like, sort and filter, compare options, easily select and buy the ones you like, and stay updated about new and contemporary designs</p>
      
			</div>
			<div class="col-sm-8">
			<iframe width="560" height="315" src="https://www.youtube.com/embed/OaLkpC6jejU" frameborder="0" allowfullscreen></iframe>
			</div>
  
		</div>

		<!-- Third Container (Grid) -->	

		<div class="container-fluid bg-3 text-center">
			
			<h3>Unlimited Choices. Unbeatable Prices. Free Shipping</h3>
			<div class="row">
    			<div class="col-sm-3">
    				<a href="products " class=" ">
					<img src="resources/images/bed.jpg" class="img-circle" style="width:100%" alt="Image">
					</a>
				</div>
				<div class="col-sm-3">
					<a href=" products" class=" ">
					<img src="resources/images/living.jpg" class="img-circle" style="width:100%" alt="Image">
					</a>
				</div>
				<div class="col-sm-3">
					<a href="products " class=" ">
					<img src="resources/images/study.jpg" class="img-circle" style="width:100%" alt="Image">
					</a>
				</div>
				<div class="col-sm-3">
					<a href="products " class=" ">
					<img src="resources/images/dining.jpg" class="img-circle" style="width:100%" alt="Image">
					</a>
				</div>
	
	
			</div>
		</div>


 </body>
</html>



