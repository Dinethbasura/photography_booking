<%--<!DOCTYPE html> --%>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link
          href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;400;600&display=swap"
          rel="stylesheet"
  />
  <link rel="stylesheet" href="style.css" />
  <link href="https://cdn.rawgit.com/michalsnik/aos/2.1.1/dist/aos.css" rel="stylesheet" />
  <title>Image Gallery | Scalipsum</title>
</head>
<body>

<div class="container">
  <h1 class="aos-heading" data-aos="fade-up">Gallery</h1>
  <div class="gallery-box">
    <img src="./assets/g1.jpg" alt="Image 1" data-aos="zoom-in" />
    <img src="./assets/g2.jpg" alt="Image 2" data-aos="zoom-in" />
    <img src="./assets/g3.jpg" alt="Image 3" data-aos="zoom-in" />
    <img src="./assets/g4.jpg" alt="Image 4" data-aos="zoom-in" />
    <img src="./assets/g5.jpg" alt="Image 5" data-aos="zoom-in" />
    <img src="./assets/g6.jpg" alt="Image 6" data-aos="zoom-in" />
    <img src="./assets/g7.jpg" alt="Image 7" data-aos="zoom-in" />
    <img src="./assets/g8.jpg" alt="Image 8" data-aos="zoom-in" />
    <img src="./assets/g9.jpg" alt="Image 9" data-aos="zoom-in" />
    <img src="./assets/g10.jpg" alt="Image 10" data-aos="zoom-in" />
    <img src="./assets/g11.jpg" alt="Image 11" data-aos="zoom-in" />
    <img src="./assets/g12.jpg" alt="Image 12" data-aos="zoom-in" />
    <img src="./assets/g2.jpg" alt="Image 13" data-aos="zoom-in" />
  </div>
</div>

<div class="loading-dots hide">
  <div></div>
  <div></div>
  <div></div>
  <div></div>
</div>

<script src="https://cdn.rawgit.com/michalsnik/aos/2.1.1/dist/aos.js"></script>
<script src="./script.js"></script>
<script>
  AOS.init();
</script>
</body>
</html>
