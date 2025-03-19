gsap.registerPlugin(ScrollTrigger);

const header = document.querySelector("header");
const toTop = document.querySelector(".to-top");
const heroSection = document.querySelector(".hero");

window.addEventListener("scroll", () => {
  const scrollTop = window.pageYOffset || document.documentElement.scrollTop;
  const heroSectionOffsetTop = heroSection.offsetTop;

  if (scrollTop > heroSectionOffsetTop) {
    toTop.classList.add("active");
  } else {
    toTop.classList.remove("active");
  }
});

// const intro1 = document.getElementById("intro-1");
const logo = document.getElementById("logo");
const tl = gsap.timeline();

if (logo) {
  tl.set([logo], {
    opacity: 0,
    translateY: 100,
  }).to([logo], {
    opacity: 100,
    translateY: 0,
    duration: 1,
    ease: "power4.inOut",
    onComplete: () => {
      navIn();
      heroIn();
      product1In();
      product2In();
    },
  });
}

const navAction1 = document.getElementById("nav-action-1");
const navAction2 = document.getElementById("nav-action-2");
const navAction3 = document.getElementById("nav-action-3");

function navIn() {
  if ((logo, navAction1, navAction2, navAction3)) {
    gsap.to("#logo", 1.5, {
      top: "2.5rem",
      left: "6rem",
      fontSize: "1.5rem",
      ease: "slow(0.7,0.7,false)",
    });

    tl.set([navAction1, navAction2, navAction3], {
      y: -100,
      opacity: 0,
    }).to([navAction1, navAction2, navAction3], {
      y: 0,
      opacity: 100,
      stagger: 0.2,
      duration: 0.5,
      ease: "power4.out",
    });
  }
}

const heroImg = document.getElementById("hero-img");
const heroTitle1 = document.getElementById("hero-title-1");
const heroTitle2 = document.getElementById("hero-title-2");
const heroTitle3 = document.getElementById("hero-title-3");
const heroTitle4 = document.getElementById("hero-title-4");

function heroIn() {
  if ((heroImg, heroTitle1, heroTitle2, heroTitle3, heroTitle4)) {
    gsap.to("#hero-img", 1.5, {
      y: 0,
      opacity: 100,
      ease: "slow(0.5,0.5,false)",
    });

    tl.set([heroTitle1, heroTitle2, heroTitle3, heroTitle4], {
      y: 100,
      opacity: 0,
    }).to([heroTitle1, heroTitle2, heroTitle3, heroTitle4], {
      y: 0,
      opacity: 100,
      stagger: 0.2,
      duration: 0.5,
      ease: "power4.out",
    });

    tl.to(["#line-bg-1", "#line-bg-2", "#line-bg-3", "#line-bg-4"], {
      height:"100%",
      duration: .5,
      stagger: .2,
      ease: "power4.out",
    })
  }
}

function product1In() {
  gsap.to("#desc1-line-1", 1, {
    scaleX: 1,
    transformOrigin: "right",
    delay: 2,
    ease: "power4.out",
  });

  gsap.to("#desc1-line-2", 1, {
    transform: "scaleX(1) rotate(-45deg)",
    transformOrigin: "right",
    delay: 2.3,
    ease: "power4.out",
  });

  gsap.to("#desc1-line-3", 1, {
    transform: "scaleX(1)",
    transformOrigin: "right",
    "--boxshadow":
      "0 0 2px #ffffff, 0 0 5px #ffffff, 0 0 10px #ffffff,0 0 20px #ffffff, 0 0 40px #ffffff",
    delay: 2.7,
    ease: "power4.out",
  });

  gsap.to("#product-name-1", 1, {
    opacity: 1,
    y: 0,
    delay: 3,
    ease: "power4.out",
  });

  gsap.to("#product-price-1", 1, {
    opacity: 1,
    y: 0,
    delay: 3,
    ease: "power4.out",
  });
}

function product2In() {
  gsap.to("#desc2-line-1", 1, {
    scaleX: 1,
    transformOrigin: "left",
    delay: 2,
    ease: "power4.out",
  });

  gsap.to("#desc2-line-2", 1, {
    transform: "scaleX(1) rotate(45deg)",
    transformOrigin: "left",
    delay: 2.3,
    ease: "power4.out",
  });

  gsap.to("#desc2-line-3", 1, {
    transform: "scaleX(1)",
    transformOrigin: "left",
    "--boxshadow":
      "0 0 2px #ffffff, 0 0 5px #ffffff, 0 0 10px #ffffff,0 0 20px #ffffff, 0 0 40px #ffffff",
    delay: 2.7,
    ease: "power4.out",
  });

  gsap.to("#product-name-2", 1, {
    opacity: 1,
    y: 0,
    delay: 3,
    ease: "power4.out",
  });

  gsap.to("#product-price-2", 1, {
    opacity: 1,
    y: 0,
    delay: 3,
    ease: "power4.out",
  });
}

gsap.to("#about-title-1", {
  scrollTrigger: {
    trigger: "#about-title-1",
    start: "top 75%",
  },
  y: 0,
  opacity: 100,
  duration: 0.5,
  onComplete: () => {
    gsap.to("#about-title-2", {
      y: 0,
      opacity: 100,
      duration: 0.5,
    });
  },
});

gsap.to("#about-desc", {
  scrollTrigger: {
    trigger: "#about-desc",
    start: "top 85%",
  },
  y: 0,
  opacity: 100,
  duration: 1,
  onComplete: () => {
    gsap.to("#bg-p", {
      color: "#000",
      "--bgwidth": "100%",
      duration: 2,
    });
  },
});

gsap.to("#about-img", {
  scrollTrigger: {
    trigger: "#about-img",
    start: "top 85%",
  },
  y: 0,
  opacity: 100,
  duration: 1,
});

gsap.to("#accesories-title-1", {
  scrollTrigger: {
    trigger: "#accesories-title-1",
    start: "top 75%",
  },
  y: 0,
  opacity: 100,
  duration: 0.5,
  onComplete: () => {
    gsap.to("#accesories-title-2", {
      y: 0,
      opacity: 100,
      duration: 0.5,
    });
  },
});

gsap.to("#accesories-container", {
  scrollTrigger: {
    trigger: "#accesories-container",
    start: "top 85%",
  },
  opacity: 1,
  duration: 1,
  onComplete: () => {
    tl.to(
      [
        "#accesories-1",
        "#accesories-2",
        "#accesories-3",
        "#accesories-4",
        "#accesories-5",
        "#accesories-action",
      ],
      {
        y: 0,
        opacity: 100,
        stagger: 0.2,
        duration: 0.5,
      }
    );
  },
});

gsap.to("#new-arrival-title-1", {
  scrollTrigger: {
    trigger: "#new-arrival-title-1",
    start: "top 75%",
  },
  y: 0,
  opacity: 100,
  duration: 0.5,
  onComplete: () => {
    gsap.to("#new-arrival-title-2", {
      y: 0,
      opacity: 100,
      duration: 0.5,
    });
  },
});

gsap.to("#new-container", {
  scrollTrigger: {
    trigger: "#new-container",
    start: "top 85%",
  },
  opacity: 1,
  duration: 1,
  onComplete: () => {
    tl.to(
      [
        "#new-product-1",
        "#new-product-2",
        "#new-product-3",
        "#new-product-4",
        "#new-right-side",
      ],
      {
        y: 0,
        opacity: 100,
        stagger: 0.2,
        duration: 0.5,
      }
    );
  },
});

gsap.to("#gallery-title-1", {
  scrollTrigger: {
    trigger: "#gallery-title-1",
    start: "top 75%",
  },
  y: 0,
  opacity: 100,
  duration: 0.5,
  onComplete: () => {
    gsap.to("#gallery-title-2", {
      y: 0,
      opacity: 100,
      duration: 0.5,
    });
  },
});

gsap.to("#gallery-container", {
  scrollTrigger: {
    trigger: "#gallery-container",
    start: "top 85%",
  },
  opacity: 1,
  duration: 1,
  onComplete: () => {
    tl.to(["#gallery-1", "#gallery-7"], {
      y: 0,
      opacity: 100,
      stagger: 0.2,
      duration: 0.2,
      ease: "power4.out",
    });
    tl.to(["#gallery-2", "#gallery-5"], {
      y: 0,
      opacity: 100,
      stagger: 0.2,
      duration: 0.2,
      ease: "power4.out",
    });
    tl.to(["#gallery-3", "#gallery-6"], {
      y: 0,
      opacity: 100,
      stagger: 0.2,
      duration: 0.2,
      ease: "power4.out",
    });
    tl.to(["#gallery-4"], {
      y: 0,
      opacity: 100,
      duration: 0.2,
      ease: "power4.out",
    });
  },
});

gsap.to("#contact-container", {
  scrollTrigger: {
    trigger: "#contact-container",
    start: "top 85%",
  },
  opacity: 1,
  duration: 1,
  onComplete: () => {
    gsap.to("#contact-img", {
      y: 0,
      opacity: 100,
      duration: 0.5,
    });

    gsap.to("#contact-title-1", {
      y: 0,
      opacity: 100,
      duration: 0.5,
      onComplete: () => {
        gsap.to("#contact-title-2", {
          y: 0,
          opacity: 100,
          duration: 0.5,
        });
      },
    });

    gsap.to("#contact-form", {
      y: 0,
      opacity: 100,
      duration: 0.5,
    });
  },
});

gsap.to("#footer", {
  scrollTrigger: {
    trigger: "#footer",
    start: "top 85%",
  },
  y:0,
  opacity: 1,
  duration: 1,
});
