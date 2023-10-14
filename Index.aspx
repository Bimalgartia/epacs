<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="PACS.Index" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta charset="utf-8"/>
  <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
  <title>e-PACS</title>
  <meta content="" name="description"/>
  <meta content="" name="keywords"/>
  <link href="assets/img/co-logo.png" rel="icon"/>
  <link href="assets/img/co-logo.png" rel="apple-touch-icon"/>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet"/>
  <link href="assets/vendor/aos/aos.css" rel="stylesheet"/>
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet"/>
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet"/>
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet"/>
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet"/>
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet"/>
  <link href="assets/css/style.css" rel="stylesheet"/>
</head>
<body>
  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center justify-content-lg-between"> 
      <h1 class="logo me-auto me-lg-0"><a href="Index.html">Attabira<span> PACS Ltd.</span></a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto me-lg-0"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
          <li><a class="nav-link scrollto" href="#about">About</a></li>
          <li><a class="nav-link scrollto" href="#services">Services</a></li>
          <li><a class="nav-link scrollto " href="#portfolio">Portfolio</a></li>
          <li><a class="nav-link scrollto" href="#team">Team</a></li>
          <li class="dropdown"><a href="#"><span>Forms</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="forms/Rabi2023FarmerRegistrationForm.pdf" target="_blank">New Farmer's Registration</a></li>
              <li><a href="forms/Farmer Registration Form-DAFP.pdf" target="_blank">DBT ID Registration</a></li>
              <li class="dropdown"><a href="#"><span>Forms for Member</span> <i class="bi bi-chevron-right"></i></a>
                <ul>
                  <li><a href="#">Membership Application</a></li>
                  <li><a href="#">Loan Application</a></li>
                  <li><a href="#">Schedule "C"</a></li>
                  <li><a href="#">Deep Drop Down 4</a></li>
                  <li><a href="#">Decleration</a></li>
                </ul>
              </li>  
                <li><a href="#">Decleration 01</a></li>
                <li><a href="#">Decleration 02</a></li>
              </ul>
          </li>
          <li><a class="nav-link scrollto" href="#footer">Contact</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->
      <a href="GetInToch.aspx" class="get-started-btn scrollto">Get in Toch</a>        
    </div>
  </header><!-- End Header -->
  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center justify-content-center">
    <div class="container" data-aos="fade-up">
      <div class="row justify-content-center" data-aos="fade-up" data-aos-delay="150">
        <div class="col-xl-6 col-lg-8">
          <h1>Friendly Service to Farmers<br /><span>ଆପଣଙ୍କ ସମବାୟ ଆପଣଙ୍କ ପାଇଁ</span></h1>
          <h2>We are team of your's for you...</h2><br />
            <img src="assets/img/testimonials/5t_logo.png" />
        </div>
      </div>
      <div class="row gy-4 mt-5 justify-content-center" data-aos="zoom-in" data-aos-delay="250">
        <div class="col-xl-2 col-md-4">
          <div class="icon-box">
            <i class="ri-body-scan-fill"></i>
            <h3><a href="https://portal.pdsodisha.gov.in/farmers/FarmerRegistrationReportWeb.aspx" target="_blank">Farmers Registration</a></h3>
          </div>
        </div>
        <div class="col-xl-2 col-md-4">
          <div class="icon-box">
            <i class="ri-plant-line"></i>
            <h3><a href="https://agrisnetodisha.ori.nic.in/stock/farmer/FarmerList.aspx" target="_blank">DBT ID Registration</a></h3>
          </div>
        </div>
        <div class="col-xl-2 col-md-4">
          <div class="icon-box">
            <i class="ri-team-fill"></i>
            <h3><a href="https://kaliaportal.odisha.gov.in/TrackToken.aspx" target="_blank">Kalia Yojana Registration</a></h3>
          </div>
        </div>
        <div class="col-xl-2 col-md-4">
          <div class="icon-box">
            <i class="ri-hand-heart-line"></i>
            <h3><a href="https://krushak.odisha.gov.in/website/home" target="_blank">Krushak Odisha Registration</a></h3>
          </div>
        </div>
        <div class="col-xl-2 col-md-4">
          <div class="icon-box">
            <i class="ri-hand-coin-line"></i>
            <h3><a href="https://sugam.odisha.gov.in/website/home" target="_blank">Go-Sugam Registration</a></h3>
          </div>
        </div>
          <div class="col-xl-2 col-md-4">
          <div class="icon-box">
            <i class="ri-currency-fill"></i>
            <h3><a href="https://odishalandrevenue.nic.in/OnlineRTrent.aspx" target="_blank">Land Revenue Payment</a></h3>
          </div>
        </div>
      </div>
    </div>
  </section><!-- End Hero -->
  <main id="main">
    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container" data-aos="fade-up">
        <div class="row">
          <div class="col-lg-6 order-1 order-lg-2" data-aos="fade-left" data-aos-delay="100">
            <img src="assets/img/President.jpg" class="img-fluid" alt=""/>
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content" data-aos="fade-right" data-aos-delay="100">
            <h3>ଆମ ଅତାବିରା ପ୍ରାଥମିକ କୃଷି ସମବାୟ ସମିତିର ଉଦ୍ଦେଶ୍ୟ</h3>
            <p class="fst-italic"> </p>
            <ul>
              <li><i class="ri-check-double-line"></i>ସମସ୍ତ ସେବା / ସୁବିଧା କିମ୍ବା ଭିତ୍ତିଭୂମି ସହାୟତାର ଲାଭ ସମିତି ଦ୍ୱାରା ପ୍ରଦାନ କରାଇବା ... </li>
              <li><i class="ri-check-double-line"></i>ଆର୍ଥିକ  ବ୍ୟାଙ୍କ/କୃଷି ଓ ଗ୍ରାମ୍ୟ ଉନ୍ନୟନ ବ୍ୟାଙ୍କ/ଜିଲ୍ଲା କେନ୍ଦ୍ରୀୟ ସମବାୟ ବ୍ୟାଙ୍କ/ରାଜ୍ୟ ସମବାୟ ବ୍ୟାଙ୍କ/ରାଜ୍ୟ ଓ କେନ୍ଦ୍ର ସରକାରଙ୍କ ଆର୍ଥିକ ଅନୁଷ୍ଠାନର ଅନୁମୋଦନ ପରେ ଦୀର୍ଘମିଆଦୀ ଋଣ ପ୍ରଦାନ କରିବା ...</li>
              <li><i class="ri-check-double-line"></i>ପରିଚାଳନା କ୍ଷେତ୍ରରେ ଯୁବ ଓ ମହିଳାମାନଙ୍କୁ ସମବାୟ ଭିତ୍ତିକ କାର୍ୟ୍ୟରେ ସାମିଲ କରିବା ଉପରେ ଗୁରୁତ୍ୱ ଦେବା ଓ ପ୍ରୋତ୍ସାହିତ କରିବା ...</li>
              <li><i class="ri-check-double-line"></i>ପରିଚାଳନା କ୍ଷେତ୍ରରେ ହିତାଧିକାରୀମାନଙ୍କୁ ପ୍ରତ୍ୟକ୍ଷ ଲାଭ ହସ୍ତାନ୍ତର (ଡିବିଟି) ମାଧ୍ୟମରେ ସେବା ପ୍ରଦାନ ପାଇଁ ସରକାରୀ ଯୋଜନାରେ ଅଂଶଗ୍ରହଣ କରିବା ...</li>
              <li><i class="ri-check-double-line"></i>ସମିତିର ସଦସ୍ୟମାନଙ୍କ ସୁବିଧା ପାଇଁ ଏହାର କାର୍ୟ୍ୟକ୍ଷେତ୍ର ଭିତରେ ଏବଂ ବାହାରେ ମାର୍କେଟିଂ ଏବଂ ଅନୁରୂପ କାର୍ୟ୍ୟକଳାପ କରିବା ...</li>
            </ul>
            <p>
              ଏହାର ସଦସ୍ୟ ଏବଂ ସେମାନଙ୍କ ପରିବାର (ବିଶେଷ କରି ଯୁବ ଏବଂ ମହିଳା) ଏବଂ ପରିଚାଳନା ଏବଂ କର୍ମଚାରୀମାନଙ୍କୁ ସମବାୟ ନୀତି ବିଷୟରେ ଶିକ୍ଷା ଦେବା, ମୂଲ୍ୟବୋଧ ଏବଂ କାର୍ୟ୍ୟ ଯାହା ପ୍ରଶିକ୍ଷଣ ଆୟୋଜନ ମାଧ୍ୟମରେ ପରିଚାଳନା କ୍ଷେତ୍ରରେ ସମସ୍ତ ଅଂଶୀଦାରମାନଙ୍କ ପାଇଁ ସାମାଜିକ ସୌହାର୍ଦ୍ଦ୍ୟ ଏବଂ ଆର୍ଥିକ ଲାଭକୁ ପ୍ରୋତ୍ସାହିତ କରିପାରେ, ଏକ୍ସପୋଜର ଭିଜିଟ ବା ଦକ୍ଷତା ବୃଦ୍ଧି କାର୍ୟ୍ୟକ୍ରମ ...</p>
          </div>
        </div>
      </div>
    </section><!-- End About Section -->
      <!-- ======= Testimonials Section ======= -->
    <section id="testimonials" class="testimonials">
      <div class="container" data-aos="zoom-in">
        <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper">
            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt=""/>
                <h3>ଶ୍ରୀଯୁକ୍ତ ଲଲିତ ଭୋଇ</h3>
                <h4>ନିର୍ଦ୍ଦେଶକ</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  ଅତାବିରା ପ୍ରାଥମିକ କୃଷିସମବାୟ ସମିତି ଲିଃ,ଅତାବିରା
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item 01 -->
            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/testimonials-2.jpg" class="testimonial-img" alt=""/>
                <h3>ଶ୍ରୀଯୁକ୍ତ ବଳରାମ ପ୍ରଧାନ</h3>
                <h4>ନିର୍ଦ୍ଦେଶକ</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  ଅତାବିରା ପ୍ରାଥମିକ କୃଷିସମବାୟ ସମିତି ଲିଃ,ଅତାବିରା
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item 02 -->
            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/testimonials-3.jpg" class="testimonial-img" alt=""/>
                <h3>ଶ୍ରୀମତୀ ରାଜକୁମାରୀ ଭୁଏ</h3>
                <h4>ଉପ- ସଭାପତି</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  ଅତାବିରା ପ୍ରାଥମିକ କୃଷିସମବାୟ ସମିତି ଲିଃ,ଅତାବିରା
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item 03 -->
            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/testimonials-4.jpg" class="testimonial-img" alt=""/>
                <h3>ଶ୍ରୀଯୁକ୍ତ ସିଦ୍ଧାର୍ଥ ଶଙ୍କର ପଣ୍ଡା</h3>
                <h4>ସଭାପତି</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  ଅତାବିରା ପ୍ରାଥମିକ କୃଷିସମବାୟ ସମିତି ଲିଃ,ଅତାବିରା
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item 04 -->
            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/testimonials-5.jpg" class="testimonial-img" alt=""/>
                <h3>ଶ୍ରୀଯୁକ୍ତ ଦୁଖିଶ୍ୟାମ ପଧାନ</h3>
                <h4>ନିର୍ଦ୍ଦେଶକ</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  ଅତାବିରା ପ୍ରାଥମିକ କୃଷିସମବାୟ ସମିତି ଲିଃ,ଅତାବିରା
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item 05 -->
              <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt=""/>
                <h3>ଶ୍ରୀଯୁକ୍ତ ନିର୍ମଲ୍ ଚନ୍ଦ୍ର ପ୍ରଧାନ</h3>
                <h4>ନିର୍ଦ୍ଦେଶକ</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  ଅତାବିରା ପ୍ରାଥମିକ କୃଷିସମବାୟ ସମିତି ଲିଃ,ଅତାବିରା
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item 06 -->
            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/testimonials-2.jpg" class="testimonial-img" alt=""/>
                <h3>ଶ୍ରୀଯୁକ୍ତ କୁଶ ସାହୁ</h3>
                <h4>ନିର୍ଦ୍ଦେଶକ</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  ଅତାବିରା ପ୍ରାଥମିକ କୃଷିସମବାୟ ସମିତି ଲିଃ,ଅତାବିରା
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item 07 -->
            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/testimonials-3.jpg" class="testimonial-img" alt=""/>
                <h3>ଶ୍ରୀଯୁକ୍ତ ଦେବାସିଶ ଭରାସାଗର</h3>
                <h4>ନିର୍ଦ୍ଦେଶକ</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  ଅତାବିରା ପ୍ରାଥମିକ କୃଷିସମବାୟ ସମିତି ଲିଃ,ଅତାବିରା
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item 08 -->
            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/testimonials-4.jpg" class="testimonial-img" alt=""/>
                <h3>ଶ୍ରୀମତୀ ବିକ୍କିନା ଅଞ୍ଜଲୀ ଦେବୀ</h3>
                <h4>ନିର୍ଦ୍ଦେଶକ</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  ଅତାବିରା ପ୍ରାଥମିକ କୃଷିସମବାୟ ସମିତି ଲିଃ,ଅତାବିରା
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item 09 -->
            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/testimonials-5.jpg" class="testimonial-img" alt=""/>
                <h3>ଶ୍ରୀଯୁକ୍ତ ଦାମୋଦର ପ୍ରଧାନ</h3>
                <h4>ନିର୍ଦ୍ଦେଶକ</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  ଅତାବିରା ପ୍ରାଥମିକ କୃଷିସମବାୟ ସମିତି ଲିଃ,ଅତାବିରା
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item 10 -->
              <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt=""/>
                <h3>ଶ୍ରୀଯୁକ୍ତ ଶିବାଜୀ ନାୟକ</h3>
                <h4>ନିର୍ଦ୍ଦେଶକ</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  ଅତାବିରା ପ୍ରାଥମିକ କୃଷିସମବାୟ ସମିତି ଲିଃ,ଅତାବିରା
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item 11 -->
            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/testimonials-2.jpg" class="testimonial-img" alt=""/>
                <h3>ଶ୍ରୀମତୀ ମେକା ରାଧା</h3>
                <h4>ନିର୍ଦ୍ଦେଶକ</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  ଅତାବିରା ପ୍ରାଥମିକ କୃଷିସମବାୟ ସମିତି ଲିଃ,ଅତାବିରା
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item 12 -->
            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/testimonials-3.jpg" class="testimonial-img" alt=""/>
                <h3>ଶ୍ରୀଯୁକ୍ତ ଜଗବନ୍ଧୁ ପ୍ରଧାନ</h3>
                <h4>ନିର୍ଦ୍ଦେଶକ</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  ଅତାବିରା ପ୍ରାଥମିକ କୃଷିସମବାୟ ସମିତି ଲିଃ,ଅତାବିରା
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item 13 -->
            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/testimonials-4.jpg" class="testimonial-img" alt=""/>
                <h3>ଶ୍ରୀଯୁକ୍ତ ଶ୍ୟାମଳାଲ୍ ସାହୁ</h3>
                <h4>ନିର୍ଦ୍ଦେଶକ</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  ଅତାବିରା ପ୍ରାଥମିକ କୃଷିସମବାୟ ସମିତି ଲିଃ,ଅତାବିରା
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item 14 -->
            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/testimonials-5.jpg" class="testimonial-img" alt=""/>
                <h3>ଶ୍ରୀଯୁକ୍ତ ମେକା ମାଲେଶୁ ରାଓ</h3>
                <h4>ନିର୍ଦ୍ଦେଶକ</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  ଅତାବିରା ପ୍ରାଥମିକ କୃଷିସମବାୟ ସମିତି ଲିଃ,ଅତାବିରା
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item  15 -->
          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section><!-- End Testimonials Section -->
    <!-- ======= Clients Section ======= -->
    <section-- id="clients" class="clients">
      <div class="container" data-aos="zoom-in">
        <div class="clients-slider swiper">
          <div class="swiper-wrapper align-items-center">
            <div class="swiper-slide"><img src="assets/img/clients/client-1.png" class="img-fluid" alt=""/></div>
            <div class="swiper-slide"><img src="assets/img/clients/client-2.png" class="img-fluid" alt=""/></div>
            <div class="swiper-slide"><img src="assets/img/clients/client-3.png" class="img-fluid" alt=""/></div>
            <div class="swiper-slide"><img src="assets/img/clients/client-4.png" class="img-fluid" alt=""/></div>
            <div class="swiper-slide"><img src="assets/img/clients/client-5.png" class="img-fluid" alt=""/></div>
            <div class="swiper-slide"><img src="assets/img/clients/client-6.png" class="img-fluid" alt=""/></div>
            <div class="swiper-slide"><img src="assets/img/clients/client-7.png" class="img-fluid" alt=""/></div>
            <div class="swiper-slide"><img src="assets/img/clients/client-8.png" class="img-fluid" alt=""/></div>
            <div class="swiper-slide"><img src="assets/img/clients/client-9.jpg" class="img-fluid" alt=""/></div>
          </div>
          <div class="swiper-pagination"></div>
        </div>
      </div>
    </section--><!-- End Clients Section -->
    <!-- ======= Features Section ======= -->
    <section id="features" class="features">
      <div class="container" data-aos="fade-up">
        <div class="row">
          <div class="image col-lg-6" style='background-image: url("assets/img/features.jpg");' data-aos="fade-right"></div>
          <div class="col-lg-6" data-aos="fade-left" data-aos-delay="100">
            <div class="icon-box mt-5 mt-lg-0" data-aos="zoom-in" data-aos-delay="150">
              <i class="bx bx-money"></i>
              <h4>Upto Rs.100000 Interest Free Loan To Members</h4>
              <p>(T&C Apply)*</p>
            </div>
            <div class="icon-box mt-5" data-aos="zoom-in" data-aos-delay="150">
              <i class="bx bx-cloud-snow"></i>
              <h4>Free Crop Insurance for Short Term Lonee Members</h4>
              <p>(T&C Apply)*</p>
            </div>
            <div class="icon-box mt-5" data-aos="zoom-in" data-aos-delay="150">
              <i class="bx bx-group"></i>
              <h4>Upto Rs.100000 Interest Free Group Loan</h4>
              <p>(T&C Apply)*</p>
            </div>
            <div class="icon-box mt-5" data-aos="zoom-in" data-aos-delay="150">
              <i class="bx bx-dollar"></i>
              <h4>Low Interest M.T. and L.T. Loan to Members</h4>
              <p>(T&C Apply)*</p>
            </div>
          </div>
        </div>
      </div>
    </section><!-- End Features Section -->
    <!-- ======= Services Section ======= -->
    <section id="services" class="services">
      <div class="container" data-aos="fade-up">
        <div class="section-title">
          <h2>Services</h2>
          <p>Services of your's PACS</p>
        </div>
        <div class="row">
          <div class="col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="100">
            <div class="icon-box">
              <div class="icon"><i class="bx bxl-dribbble"></i></div>
              <h4><a href="#">Membership</a></h4>
              <p>Your's PACS offer smooth membership to all farmers under our area.</p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0" data-aos="zoom-in" data-aos-delay="200">
            <div class="icon-box">
              <div class="icon"><i class="bx bx-file"></i></div>
              <h4><a href="#">Deposit</a></h4>
              <p>Your's PACS offer to all member's for deposit their savieng and earn good interest </p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0" data-aos="zoom-in" data-aos-delay="300">
            <div class="icon-box">
              <div class="icon"><i class="bx bx-tachometer"></i></div>
              <h4><a href="#">Agricultural Loan</a></h4>
              <p>Your's PACS offer to all member's for all types of Agricultural Term loan with sumvension and many more..</p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="zoom-in" data-aos-delay="100">
            <div class="icon-box">
              <div class="icon"><i class="bx bx-world"></i></div>
              <h4><a href="#">Nemo Enim</a></h4>
              <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis</p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="zoom-in" data-aos-delay="200">
            <div class="icon-box">
              <div class="icon"><i class="bx bx-slideshow"></i></div>
              <h4><a href="#">Dele cardo</a></h4>
              <p>Quis consequatur saepe eligendi voluptatem consequatur dolor consequuntur</p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="zoom-in" data-aos-delay="300">
            <div class="icon-box">
              <div class="icon"><i class="bx bx-arch"></i></div>
              <h4><a href="#">Divera don</a></h4>
              <p>Modi nostrum vel laborum. Porro fugit error sit minus sapiente sit aspernatur</p>
            </div>
          </div>
        </div>
      </div>
    </section><!-- End Services Section -->
    <!-- ======= Cta Section ======= -->
    <section id="cta" class="cta">
      <div class="container" data-aos="zoom-in">
        <div class="text-center">
          <h3>PADDY / ଧାନ </h3>
          <p> Minimum Support Price / </p>
          <a class="cta-btn" href="#">View Price List</a>
        </div>
      </div>
    </section><!-- End Cta Section -->
    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio">
      <div class="container" data-aos="fade-up">
        <div class="section-title">
          <h2>Portfolio</h2>
          <p>Check our Portfolio</p>
        </div>
        <div class="row" data-aos="fade-up" data-aos-delay="100">
          <div class="col-lg-12 d-flex justify-content-center">
            <ul id="portfolio-flters">
              <li data-filter="*" class="filter-active">All</li>
              <li data-filter=".filter-app">Procurement</li>
              <li data-filter=".filter-card">Loan</li>
              <li data-filter=".filter-web">Event</li>
            </ul>
          </div>
        </div>
        <div class="row portfolio-container" data-aos="fade-up" data-aos-delay="200">
          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-wrap">
              <img src="assets/img/portfolio/portfolio-1.jpg" class="img-fluid" alt=""/>
              <div class="portfolio-info">
                <h4>App 1</h4>
                <p>App</p>
                <div class="portfolio-links">
                  <a href="assets/img/portfolio/portfolio-1.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="App 1"><i class="bx bx-plus"></i></a>
                  <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div class="portfolio-wrap">
              <img src="assets/img/portfolio/portfolio-2.jpg" class="img-fluid" alt=""/>
              <div class="portfolio-info">
                <h4>Web 3</h4>
                <p>Web</p>
                <div class="portfolio-links">
                  <a href="assets/img/portfolio/portfolio-2.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Web 3"><i class="bx bx-plus"></i></a>
                  <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-wrap">
              <img src="assets/img/portfolio/portfolio-3.jpg" class="img-fluid" alt=""/>
              <div class="portfolio-info">
                <h4>App 2</h4>
                <p>App</p>
                <div class="portfolio-links">
                  <a href="assets/img/portfolio/portfolio-3.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="App 2"><i class="bx bx-plus"></i></a>
                  <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <div class="portfolio-wrap">
              <img src="assets/img/portfolio/portfolio-4.jpg" class="img-fluid" alt=""/>
              <div class="portfolio-info">
                <h4>Card 2</h4>
                <p>Card</p>
                <div class="portfolio-links">
                  <a href="assets/img/portfolio/portfolio-4.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Card 2"><i class="bx bx-plus"></i></a>
                  <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div class="portfolio-wrap">
              <img src="assets/img/portfolio/portfolio-5.jpeg" class="img-fluid" alt=""/>
              <div class="portfolio-info">
                <h4>Web 2</h4>
                <p>Web</p>
                <div class="portfolio-links">
                  <a href="assets/img/portfolio/portfolio-5.jpeg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Web 2"><i class="bx bx-plus"></i></a>
                  <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-wrap">
              <img src="assets/img/portfolio/portfolio-6.jpg" class="img-fluid" alt=""/>
              <div class="portfolio-info">
                <h4>App 3</h4>
                <p>App</p>
                <div class="portfolio-links">
                  <a href="assets/img/portfolio/portfolio-6.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="App 3"><i class="bx bx-plus"></i></a>
                  <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <div class="portfolio-wrap">
              <img src="assets/img/portfolio/portfolio-7.jpg" class="img-fluid" alt=""/>
              <div class="portfolio-info">
                <h4>Card 1</h4>
                <p>Card</p>
                <div class="portfolio-links">
                  <a href="assets/img/portfolio/portfolio-7.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Card 1"><i class="bx bx-plus"></i></a>
                  <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <div class="portfolio-wrap">
              <img src="assets/img/portfolio/portfolio-8.jpg" class="img-fluid" alt=""/>
              <div class="portfolio-info">
                <h4>Card 3</h4>
                <p>Card</p>
                <div class="portfolio-links">
                  <a href="assets/img/portfolio/portfolio-8.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Card 3"><i class="bx bx-plus"></i></a>
                  <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                </div>
              </div>
            </div>
          </div>
             <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-wrap">
              <img src="assets/img/portfolio/portfolio-10.jpeg" class="img-fluid" alt=""/>
              <div class="portfolio-info">
                <h4>App 4</h4>
                <p>App</p>
                <div class="portfolio-links">
                  <a href="assets/img/portfolio/portfolio-10.jpeg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="App 4"><i class="bx bx-plus"></i></a>
                  <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div class="portfolio-wrap">
              <img src="assets/img/portfolio/portfolio-9.jpeg" class="img-fluid" alt=""/>
              <div class="portfolio-info">
                <h4>Web 3</h4>
                <p>Web</p>
                <div class="portfolio-links">
                  <a href="assets/img/portfolio/portfolio-9.jpeg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Web 3"><i class="bx bx-plus"></i></a>
                  <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section><!-- End Portfolio Section -->
    <!-- ======= Counts Section ======= -->
    <section id="counts" class="counts">
      <div class="container" data-aos="fade-up">
        <div class="row no-gutters">
          <div class="image col-xl-5 d-flex align-items-stretch justify-content-center justify-content-lg-start" data-aos="fade-right" data-aos-delay="100"></div>
          <div class="col-xl-7 ps-0 ps-lg-5 pe-lg-1 d-flex align-items-stretch" data-aos="fade-left" data-aos-delay="100">
            <div class="content d-flex flex-column justify-content-center">
              <h3>Voluptatem dignissimos provident quasi</h3>
              <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Duis aute irure dolor in reprehenderit
              </p>
              <div class="row">
                <div class="col-md-6 d-md-flex align-items-md-stretch">
                  <div class="count-box">
                    <i class="bi bi-emoji-smile"></i>
                    <span data-purecounter-start="0" data-purecounter-end="3452" data-purecounter-duration="2" class="purecounter"></span>
                    <p><strong>Happy Members</strong> .</p>
                  </div>
                </div>
                <div class="col-md-6 d-md-flex align-items-md-stretch">
                  <div class="count-box">
                    <i class="bi bi-journal-richtext"></i>
                    <span data-purecounter-start="0" data-purecounter-end="1842" data-purecounter-duration="2" class="purecounter"></span>
                    <p><strong>Lonee Members</strong> .</p>
                  </div>
                </div>
                <div class="col-md-6 d-md-flex align-items-md-stretch">
                  <div class="count-box">
                    <i class="bi bi-clock"></i>
                    <span data-purecounter-start="0" data-purecounter-end="56" data-purecounter-duration="4" class="purecounter"></span>
                    <p><strong>Years of services</strong>.</p>
                  </div>
                </div>
                <div class="col-md-6 d-md-flex align-items-md-stretch">
                  <div class="count-box">
                    <i class="bi bi-award"></i>
                    <span data-purecounter-start="0" data-purecounter-end="15" data-purecounter-duration="4" class="purecounter"></span>
                    <p><strong>Hard Workers</strong>.</p>
                  </div>
                </div>
              </div>
            </div><!-- End .content-->
          </div>
        </div>
      </div>
    </section><!-- End Counts Section -->
    <!-- ======= Team Section ======= -->
    <section id="team" class="team">
      <div class="container" data-aos="fade-up">
        <div class="section-title">
          <h2>Team</h2>
          <p>Check our Office Team</p>
        </div>
        <div class="row">
          <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
            <div class="member" data-aos="fade-up" data-aos-delay="100">
              <div class="member-img">
                <img src="assets/img/team/Sanjay.jpg" class="img-fluid" alt=""/>
                <div class="social">
                  <a href="#"><i class="bi bi-twitter"></i></a>
                  <a href="#"><i class="bi bi-facebook"></i></a>
                  <a href="#"><i class="bi bi-instagram"></i></a>
                  <a href="#"><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
              <div class="member-info">
                <h4>Sanjaya Kumar Nayak</h4>
                <span>Secretary</span>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
            <div class="member" data-aos="fade-up" data-aos-delay="200">
              <div class="member-img">
                <img src="assets/img/team/ganesh.jpg" class="img-fluid" alt=""/>
                <div class="social">
                  <a href="#"><i class="bi bi-twitter"></i></a>
                  <a href="#"><i class="bi bi-facebook"></i></a>
                  <a href="#"><i class="bi bi-instagram"></i></a>
                  <a href="#"><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
              <div class="member-info">
                <h4>Ganesh Behera</h4>
                <span>Account-cum-Cashier</span>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
            <div class="member" data-aos="fade-up" data-aos-delay="300">
              <div class="member-img">
                <img src="assets/img/team/sarathi.jpg" class="img-fluid" alt=""/>
                <div class="social">
                  <a href="#"><i class="bi bi-twitter"></i></a>
                  <a href="#"><i class="bi bi-facebook"></i></a>
                  <a href="#"><i class="bi bi-instagram"></i></a>
                  <a href="#"><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
              <div class="member-info">
                <h4>Sarathi Sahu</h4>
                <span>Cleark</span>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
            <div class="member" data-aos="fade-up" data-aos-delay="400">
              <div class="member-img">
                <img src="assets/img/team/satish.jpg" class="img-fluid" alt=""/>
                <div class="social">
                  <a href="#"><i class="bi bi-twitter"></i></a>
                  <a href="#"><i class="bi bi-facebook"></i></a>
                  <a href="#"><i class="bi bi-instagram"></i></a>
                  <a href="#"><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
              <div class="member-info">
                <h4>Satish Kumar Meca</h4>
                <span>Loan Supervisior</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section><!-- End Team Section --> 
  </main><!-- End #main -->
  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">
          <div class="col-lg-3 col-md-6">
            <div class="footer-info">
              <h3>Attabira<span> PACS Ltd.</span></h3>
              <p> Behind of Block Office <br/>
                Attabira, Bargarh<br/>
                  Odisha (768027)<br/>
                <strong>Phone:</strong> +91 76828 02509<br/>
                <strong>Email:</strong> attabirascsltd@gmail.com<br/>
              </p>
              <div class="social-links mt-3">
                <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
                <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
                <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
                <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
              </div>
            </div>
          </div>
          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Useful Verify Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="http://bhulekh.ori.nic.in/RoRView.aspx" target="_blank">Bhulekh Check</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="https://electoralsearch.eci.gov.in" target="_blank">Voter ID Check</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="https://myaadhaar.uidai.gov.in/genricDownloadAadhaar" target="_blank">Aadhar Check</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="https://unifiedportal-emp.epfindia.gov.in/epfo/" target="_blank">EPFO</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="https://edodisha.gov.in/" target="_blank">E-Despatch</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="https://scec.odisha.gov.in/" target="_blank">Co-Op Election Comm.</a></li>
            </ul>
          </div>
          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Official Login Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="https://sakhyam.odisha.gov.in/ORCS/index.html#/login" target="_blank">SAKHYAM</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="http://164.100.141.185/" target="_blank">PPAS</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="http://portal.pdsodisha.gov.in/" target="_blank">FSCW</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="https://pmfby.gov.in/" target="_blank">PMFBY</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="https://agrisnetodisha.ori.nic.in/stock/login.aspx" target="_blank">SEEDS DBT</a></li>
            </ul>
          </div>             
           <div class="col-lg-3 col-md-6 footer-links">
            <h4>Act and Rules</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="forms/OCS Act-1962.pdf" target="_blank">OCS Act-1962</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="forms/OCS Rules-1965.pdf" target="_blank">OCS Rules-1965</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="forms/OCS-Amendment-Act2008.pdf" target="_blank">OCS-Amendment-Act-2008</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="forms/OCS-Amendment-Act2011.pdf" target="_blank">OCS-Amendment-Act-2011</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="forms/OCS-Amendment-Act2012.pdf" target="_blank">OCS-Amendment-Act-2012</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="forms/OCS-Amendment-Act2013.pdf" target="_blank">OCS-Amendment-Act-2013</a></li>
            </ul>
          </div>
            </div>
        </div>
      </div>
    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>Attabira PACS Ltd</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/gp-free-multipurpose-html-bootstrap-template/ -->
        Maintain by <a href="https://bootstrapmade.com/">Bimal Kumar Gartia</a>
      </div>
    </div>
  </footer><!-- End Footer -->         
  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>  
</body>
</html>