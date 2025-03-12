<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- Google Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
            href="https://fonts.googleapis.com/css2?family=Audiowide&family=Saira:ital,wght@0,100..900;1,100..900&display=swap"
            rel="stylesheet"
    />

    <!-- Feather Icon -->
    <script src="https://unpkg.com/feather-icons"></script>

    <!-- AOS -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet" />

    <link rel="stylesheet" href="style.css" />
    <title>Photography Booking</title>

    <!-- Booking Form CSS -->
    <style>
        /* Full-page booking form styles */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Saira', sans-serif;
            color: white;
            background-image: url('assets/camera.jpg'); /* Background image */
            background-size: cover; /* Ensure the image covers the entire page */
            background-position: center; /* Center the background image */
            background-repeat: no-repeat; /* Prevent the image from repeating */
        }

        /* Dark overlay for better readability */
        body::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5); /* Dark overlay */
            z-index: -1;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 2em;
        }

        .booking-container {
            background-color: rgba(23, 23, 23, 0.8); /* Semi-transparent background */
            padding: 2em;
            border-radius: 25px;
            text-align: center;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.5);
            margin-bottom: 2em;
        }

        .booking-container h1 {
            margin-bottom: 1em;
            font-size: 1.5em;
        }

        .field {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 0.5em;
            border-radius: 25px;
            padding: 0.6em;
            border: none;
            outline: none;
            color: white;
            background-color: #252525;
            margin-bottom: 1em;
        }

        .input-icon {
            height: 1.3em;
            width: 1.3em;
            fill: white;
        }

        .input-field {
            background: none;
            border: none;
            outline: none;
            width: 100%;
            color: #d3d3d3;
        }

        .btn {
            display: flex;
            justify-content: space-between;
            margin-top: 1.5em;
        }

        .button1,
        .button2 {
            padding: 0.5em 1em;
            border-radius: 5px;
            border: none;
            outline: none;
            transition: 0.4s ease-in-out;
            background-color: #252525;
            color: white;
            cursor: pointer;
        }

        .button1:hover,
        .button2:hover {
            background-color: black;
            color: white;
        }

        /* Photographers List Styles */
        .photographers-list {
            display: flex;
            flex-wrap: wrap;
            gap: 1em;
            justify-content: center;
            margin-top: 2em;
        }

        .photographer-card {
            background-color: rgba(23, 23, 23, 0.8);
            padding: 1em;
            border-radius: 10px;
            width: 200px;
            text-align: center;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.5);
        }

        .photographer-card img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            margin-bottom: 1em;
        }

        .photographer-card h3 {
            margin: 0.5em 0;
            font-size: 1.2em;
        }

        .photographer-card p {
            margin: 0;
            font-size: 0.9em;
            color: #d3d3d3;
        }

        /* Pricing Plans Styles */
        .pricing-plans {
            display: flex;
            flex-wrap: wrap;
            gap: 1em;
            justify-content: center;
            margin-top: 2em;
        }

        .plan-card {
            background-color: rgba(23, 23, 23, 0.8);
            padding: 1.5em;
            border-radius: 10px;
            width: 250px;
            text-align: center;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.5);
        }

        .plan-card h3 {
            margin: 0.5em 0;
            font-size: 1.5em;
        }

        .plan-card p {
            margin: 0.5em 0;
            font-size: 1em;
            color: #d3d3d3;
        }

        .plan-card .price {
            font-size: 1.8em;
            font-weight: bold;
            margin: 0.5em 0;
        }

        .plan-card .features {
            list-style: none;
            padding: 0;
            margin: 1em 0;
        }

        .plan-card .features li {
            margin: 0.5em 0;
            font-size: 0.9em;
            color: #d3d3d3;
        }

        /* Button styles */
        button {
            width: 165px;
            height: 62px;
            cursor: pointer;
            color: #fff;
            font-size: 17px;
            border-radius: 1rem;
            border: none;
            position: relative;
            background: #100720;
            transition: 0.1s;
        }

        button::after {
            content: '';
            width: 100%;
            height: 100%;
            background-image: radial-gradient( circle farthest-corner at 10% 20%,  rgba(255,94,247,1) 17.8%, rgba(2,245,255,1) 100.2% );
            filter: blur(15px);
            z-index: -1;
            position: absolute;
            left: 0;
            top: 0;
        }

        button:active {
            transform: scale(0.9) rotate(3deg);
            background: radial-gradient( circle farthest-corner at 10% 20%,  rgba(255,94,247,1) 17.8%, rgba(2,245,255,1) 100.2% );
            transition: 0.5s;
        }
    </style>
</head>
<body>
<div class="container">
    <!-- Booking Form -->
    <div class="booking-container" data-aos="fade-up">
        <h1>Photography Booking</h1>
        <!-- Added GALLERY button (landing page style) -->
        <button data-aos="fade-down" data-aos-delay="400" onclick="window.location.href='gallery.jsp'">
            GALLERY
            <i data-feather="aperture" class="icon"></i>
        </button>
        <form class="form">
            <div class="field">
                <svg class="input-icon" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
                    <path d="M13.106 7.222c0-2.967-2.249-5.032-5.482-5.032-3.35 0-5.646 2.318-5.646 5.702 0 3.493 2.235 5.708 5.762 5.708.862 0 1.689-.123 2.304-.335v-.862c-.43.199-1.354.328-2.29.328-2.926 0-4.813-1.88-4.813-4.798 0-2.844 1.921-4.881 4.594-4.881 2.735 0 4.608 1.688 4.608 4.156 0 1.682-.554 2.769-1.416 2.769-.492 0-.772-.28-.772-.76V5.206H8.923v.834h-.11c-.266-.595-.881-.964-1.6-.964-1.4 0-2.378 1.162-2.378 2.823 0 1.737.957 2.906 2.379 2.906.8 0 1.415-.39 1.709-1.087h.11c.081.67.703 1.148 1.503 1.148 1.572 0 2.57-1.415 2.57-3.643zm-7.177.704c0-1.197.54-1.907 1.456-1.907.942 0 1.524.738 1.524 1.907S8.308 9.84 7.371 9.84c-.895 0-1.442-.725-1.442-1.914z"></path>
                </svg>
                <input autocomplete="off" placeholder="Full Name" class="input-field" type="text">
            </div>
            <div class="field">
                <svg class="input-icon" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
                    <path d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2zm3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2z"/>
                </svg>
                <input placeholder="Email" class="input-field" type="email">
            </div>
            <div class="field">
                <svg class="input-icon" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
                    <path d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2zm3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2z"/>
                </svg>
                <input placeholder="Phone Number" class="input-field" type="tel">
            </div>
            <div class="field">
                <svg class="input-icon" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
                    <path d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2zm3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2z"/>
                </svg>
                <input placeholder="Event Date" class="input-field" type="date">
            </div>
            <div class="field">
                <svg class="input-icon" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
                    <path d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2zm3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2z"/>
                </svg>
                <input placeholder="Event Location" class="input-field" type="text">
            </div>
            <div class="btn">
                <button class="button1" type="submit">Book Now</button>
                <button class="button2" type="button" onclick="window.location.href='index.jsp'">Cancel</button>
            </div>
        </form>
    </div>

    <!-- Photographers List -->
    <div class="photographers-list" data-aos="fade-up">
        <div class="photographer-card">
            <img src="assets/photographer1.jpg" alt="Photographer 1">
            <h3>John Doe</h3>
            <p>Portrait & Event Photography</p>
        </div>
        <div class="photographer-card">
            <img src="assets/photographer2.jpg" alt="Photographer 2">
            <h3>Jane Smith</h3>
            <p>Wedding & Commercial Photography</p>
        </div>
        <div class="photographer-card">
            <img src="assets/photographer3.jpg" alt="Photographer 3">
            <h3>Alexa lopez</h3>
            <p>Landscape & Product Photography</p>
        </div>
    </div>

    <!-- Pricing Plans -->
    <div class="pricing-plans" data-aos="fade-up">
        <div class="plan-card">
            <h3>Basic Plan</h3>
            <p class="price">$100</p>
            <ul class="features">
                <li>2 Hours of Coverage</li>
                <li>50 Edited Photos</li>
                <li>Online Gallery</li>
            </ul>
            <button class="button1">Choose Plan</button>
        </div>
        <div class="plan-card">
            <h3>Standard Plan</h3>
            <p class="price">$250</p>
            <ul class="features">
                <li>4 Hours of Coverage</li>
                <li>100 Edited Photos</li>
                <li>Online Gallery</li>
                <li>1 Print</li>
            </ul>
            <button class="button1">Choose Plan</button>
        </div>
        <div class="plan-card">
            <h3>Premium Plan</h3>
            <p class="price">$500</p>
            <ul class="features">
                <li>8 Hours of Coverage</li>
                <li>200 Edited Photos</li>
                <li>Online Gallery</li>
                <li>3 Prints</li>
                <li>Custom Album</li>
            </ul>
            <button class="button1">Choose Plan</button>
        </div>
    </div>
</div>

<!-- AOS -->
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script src="script.js"></script>
<script>
    AOS.init();
    feather.replace();
</script>
</body>
</html>

