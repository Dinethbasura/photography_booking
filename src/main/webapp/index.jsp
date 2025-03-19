<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <!-- Google Font -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link
          href="https://fonts.googleapis.com/css2?family=Chakra+Petch:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
          rel="stylesheet"
  />

  <!-- GSAP -->
  <script src="https://cdn.jsdelivr.net/npm/gsap@3.12.5/dist/gsap.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/gsap@3.12.5/dist/ScrollTrigger.min.js"></script>

  <link rel="stylesheet" href="style.css" />

  <title>PHOTOGENIX</title>
</head>
<body>
<a href="" id="logo">PHOTOGENIX</a>
<header>
  <div class="container">
    <div class="content">
      <div class="logo"></div>

      <div class="action">
        <button id="nav-action-1">
          <box-icon name="search-alt-2" class="icon"></box-icon>
        </button>
        <button id="nav-action-2">
          <box-icon
                  name="shopping-bag"
                  type="solid"
                  class="icon"
          ></box-icon>
        </button>
        <!-- Updated Login Button with Link -->
        <button id="nav-action-3">
          <a href="login.jsp" style="text-decoration: none; color: inherit;">
            <span>Login</span>
          </a>
        </button>
      </div>
    </div>
  </div>
</header>

<a href="#" class="to-top"><box-icon name="chevron-up"></box-icon></a>

<section class="hero">
  <div class="container">
    <div class="content">
      <div class="line-bg">
        <div class="line-1" id="line-bg-1"></div>
        <div class="line-2" id="line-bg-2"></div>
        <div class="line-3" id="line-bg-3"></div>
        <div class="line-4" id="line-bg-4"></div>
      </div>

      <div class="desc-1" id="desc-1">
        <div class="line-1" id="desc1-line-1"></div>
        <div class="line-2" id="desc1-line-2"></div>
        <div class="line-3" id="desc1-line-3"></div>
        <div class="text">
          <h1 id="product-name-1">PHOTO SESSION</h1>
          <p id="product-price-1">$250.00</p>
        </div>
      </div>

      <div class="desc-2" id="desc-2">
        <div class="line-1" id="desc2-line-1"></div>
        <div class="line-2" id="desc2-line-2"></div>
        <div class="line-3" id="desc2-line-3"></div>
        <div class="text">
          <h1 id="product-name-2">FAMILY PORTRAIT</h1>
          <p id="product-price-2">$175.00</p>
        </div>
      </div>

      <img src="assets/hero.png" alt="hero" id="hero-img" />
      <div class="left-side">
        <h1 id="hero-title-1">CAPTURE</h1>
        <h1 id="hero-title-2">MEMORIES</h1>
        <h1 id="hero-title-3">WITH</h1>
        <h1 id="hero-title-4">PHOTOGENIX</h1>
      </div>
      <div class="right-side"></div>
    </div>
  </div>
</section>

<section class="about">
  <div class="container">
    <div class="content">
      <div class="title">
        <h1 id="about-title-1">PHOTO</h1>
        <h1 id="about-title-2">SESSIONS</h1>
      </div>

      <p id="about-desc">
        Expertly capturing <span id="bg-p">Moments and Emotions</span>, our
        photography sessions elevate everyday with specialized techniques
        and <span id="bg-p">Creative Vision</span>. Adaptable packages
        seamlessly integrate artistic flair to empower your dynamic
        lifestyle, enabling you to conquer any challenge with
        <span id="bg-p">Confidence and Joy.</span>
      </p>

      <img src="assets/abouts.jpeg" alt="about" id="about-img" />
    </div>
  </div>
</section>

<section class="new-arrival">
  <div class="container">
    <div class="content">
      <div class="title">
        <h1 id="new-arrival-title-1">PHOTO</h1>
        <h1 id="new-arrival-title-2">PACKAGES</h1>
      </div>

      <div class="product-container" id="new-container">
        <div class="left-side">
          <div class="product" id="new-product-1">
            <div class="image">
              <img
                      src="assets/new-arrival/jackets-xy.jpeg"
                      alt="jacket-xy"
              />
              <button>
                <box-icon name="right-arrow-alt" class="icon"></box-icon>
              </button>
            </div>
            <div class="row">
              <h1 class="name">Wedding Package</h1>
              <p class="price">$215.00</p>
            </div>
            <p class="desc">
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Cum
              obcaecati pariatur reiciendis iusto nihil quis error
              cupiditate!
            </p>
          </div>
          <div class="product" id="new-product-2">
            <div class="image">
              <img
                      src="assets/new-arrival/hoodies-v1.jpeg"
                      alt="hoodie-v1"
              />
              <button>
                <box-icon name="right-arrow-alt" class="icon"></box-icon>
              </button>
            </div>

            <div class="row">
              <h1 class="name">Engagement Shoot</h1>
              <p class="price">$150.00</p>
            </div>
            <p class="desc">
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Cum
              obcaecati pariatur reiciendis iusto nihil quis error
              cupiditate!
            </p>
          </div>
          <div class="product" id="new-product-3">
            <div class="image">
              <img
                      src="assets/new-arrival/jackets-xz.jpeg"
                      alt="jacket-xz"
              />
              <button>
                <box-icon name="right-arrow-alt" class="icon"></box-icon>
              </button>
            </div>

            <div class="row">
              <h1 class="name">Maternity Session</h1>
              <p class="price">$220.00</p>
            </div>
            <p class="desc">
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Cum
              obcaecati pariatur reiciendis iusto nihil quis error
              cupiditate!
            </p>
          </div>
          <div class="product" id="new-product-4">
            <div class="image">
              <img
                      src="assets/new-arrival/hoodies-v2.jpeg"
                      alt="hoodie-v2"
              />
              <button>
                <box-icon name="right-arrow-alt" class="icon"></box-icon>
              </button>
            </div>

            <div class="row">
              <h1 class="name">Graduation Photos</h1>
              <p class="price">$185.00</p>
            </div>
            <p class="desc">
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Cum
              obcaecati pariatur reiciendis iusto nihil quis error
              cupiditate!
            </p>
          </div>
        </div>

        <div class="right-side" id="new-right-side"></div>
      </div>
    </div>
  </div>
</section>

<section class="accesories">
  <div class="container">
    <div class="content">
      <div class="title">
        <h1 id="accesories-title-1">PHOTO</h1>
        <h1 id="accesories-title-2">ADD-ONS</h1>
      </div>

      <div class="product-container" id="accesories-container">
        <div class="product" id="accesories-1">
          <p class="number">01</p>
          <div class="image">
            <img src="assets/accesories/watchs.png" alt="watch" />
          </div>
          <h1>Photo Album</h1>
          <p class="desc">
            Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ipsam
            repellendus, exercitationem eum natus, quidem facilis rerum
            magni quaerat quas delectus minima recusandae iste porro eos?
          </p>
          <button>
            See More
            <box-icon
                    name="arrow-back"
                    rotate="180"
                    class="icon"
            ></box-icon>
          </button>
        </div>

        <div class="product" id="accesories-2">
          <p class="number">02</p>
          <div class="image">
            <img src="assets/accesories/bracelets.png" alt="bracelet" />
          </div>
          <h1>Photo Frames</h1>
          <p class="desc">
            Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ipsam
            repellendus, exercitationem eum natus, quidem facilis rerum
            magni quaerat quas delectus minima recusandae iste porro eos?
          </p>
          <button>
            See More
            <box-icon
                    name="arrow-back"
                    rotate="180"
                    class="icon"
            ></box-icon>
          </button>
        </div>

        <div class="product" id="accesories-3">
          <p class="number">03</p>
          <div class="image">
            <img src="assets/accesories/bags.png" alt="bag" />
          </div>
          <h1>Photo Prints</h1>
          <p class="desc">
            Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ipsam
            repellendus, exercitationem eum natus, quidem facilis rerum
            magni quaerat quas delectus minima recusandae iste porro eos?
          </p>
          <button>
            See More
            <box-icon
                    name="arrow-back"
                    rotate="180"
                    class="icon"
            ></box-icon>
          </button>
        </div>

        <div class="product" id="accesories-4">
          <p class="number">04</p>
          <div class="image">
            <img src="assets/accesories/necklaces.png" alt="necklace" />
          </div>
          <h1>Photo Editing</h1>
          <p class="desc">
            Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ipsam
            repellendus, exercitationem eum natus, quidem facilis rerum
            magni quaerat quas delectus minima recusandae iste porro eos?
          </p>
          <button>
            See More
            <box-icon
                    name="arrow-back"
                    rotate="180"
                    class="icon"
            ></box-icon>
          </button>
        </div>

        <div class="product" id="accesories-5">
          <p class="number">05</p>
          <div class="image">
            <img src="assets/accesories/rings.png" alt="ring" />
          </div>
          <h1>Custom Packages</h1>
          <p class="desc">
            Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ipsam
            repellendus, exercitationem eum natus, quidem facilis rerum
            magni quaerat quas delectus minima recusandae iste porro eos?
          </p>
          <button>
            See More
            <box-icon
                    name="arrow-back"
                    rotate="180"
                    class="icon"
            ></box-icon>
          </button>
        </div>
      </div>

      <button class="action" id="accesories-action">View All</button>
    </div>
  </div>
</section>

<section class="gallery">
  <div class="container">
    <div class="content">
      <div class="title">
        <h1 id="gallery-title-1">PHOTO</h1>
        <h1 id="gallery-title-2">GALLERY</h1>
      </div>

      <div class="image-container" id="gallery-container">
        <div class="col-1">
          <img src="assets/gallery/img-7.jpeg" alt="img-7" id="gallery-1" />
        </div>
        <div class="col-2">
          <img src="assets/gallery/img-2.jpeg" alt="img-2" id="gallery-2" />
          <img src="assets/gallery/img-4.jpeg" alt="img-4" id="gallery-3" />
        </div>
        <div class="col-3">
          <img src="assets/gallery/img-1.jpeg" alt="img-1" id="gallery-4" />
        </div>
        <div class="col-4">
          <img src="assets/gallery/img-3.jpeg" alt="img-3" id="gallery-5" />
          <img src="assets/gallery/img-5.jpeg" alt="img-5" id="gallery-6" />
        </div>
        <div class="col-5">
          <img src="assets/gallery/img-6.jpeg" alt="img-6" id="gallery-7" />
        </div>
      </div>
    </div>
  </div>
</section>

<section class="contact">
  <div class="container">
    <div class="content" id="contact-container">
      <div class="left-side">
        <img src="assets/contact.png" alt="contact" id="contact-img" />
      </div>

      <div class="right-side">
        <div class="title">
          <h1 id="contact-title-1">HAVE</h1>
          <h1 id="contact-title-2">QUESTION?</h1>
        </div>

        <form id="contact-form">
          <div class="row">
            <input type="text" placeholder="Name..." />
            <input type="number" placeholder="Phone..." />
          </div>
          <input type="email" placeholder="Email..." class="email" />
          <textarea placeholder="Message..."></textarea>
          <button>
            SEND
            <box-icon
                    name="arrow-back"
                    rotate="180"
                    class="icon"
            ></box-icon>
          </button>
        </form>
      </div>
    </div>
  </div>
</section>

<footer id="footer">
  <div class="container">
    <div class="content">
      <div class="row-1">
        <div class="left-side">
          <div class="list">
            <div class="title">
              <box-icon
                      name="circle"
                      type="solid"
                      class="circle"
              ></box-icon>
              <h1>Explore</h1>
            </div>

            <ul>
              <li>
                <a href="#">Book Now</a>
              </li>
              <li>
                <a href="#">About Us</a>
              </li>
              <li>
                <a href="#">Gallery</a>
              </li>
              <li>
                <a href="#">News</a>
              </li>
            </ul>
          </div>

          <div class="list">
            <div class="title">
              <box-icon
                      name="circle"
                      type="solid"
                      class="circle"
              ></box-icon>
              <h1>Social</h1>
            </div>

            <ul>
              <li>
                <a href="#">Tiktok</a>
              </li>
              <li>
                <a href="#">Instagram</a>
              </li>
              <li>
                <a href="#">Youtube</a>
              </li>
              <li>
                <a href="#">Facebook</a>
              </li>
            </ul>
          </div>
        </div>

        <div class="right-side">
          <button><span>Contact us</span></button>
          <h1>photosupport@photogenix</h1>
        </div>
      </div>

      <div class="row-2">
        <p class="copy">&copy; 2024 PHOTOGENIX</p>

        <div class="action">
          <a href="">Privacy Policy</a>
          <a href="">Terms & Conditions</a>
        </div>

        <p class="dev">Develop by <span>SLIIT Y1S2 GROUP 6</span></p>
      </div>
    </div>
  </div>
</footer>

<script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>

<script src="script.js"></script>
</body>
</html>