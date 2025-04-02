<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%!
    public class Photog {
        private String name;
        private String category;
        private int rating;
        private String image; // New: image file name

        public Photog(String n, String c, int r, String img) {
            name = n;
            category = c;
            rating = r;
            image = img;
        }

        public String getName() { return name; }
        public String getCategory() { return category; }
        public int getRating() { return rating; }
        public String getImage() { return image; }
    }
%>

<%
    Photog[] photographers = {
            new Photog("Emma Johnson", "Portraits", 5, "emma.jpg"),
            new Photog("Marcus Brown", "Events", 4, "marcus.jpg"),
            new Photog("Sophia Chen", "Fashion", 3, "sophia.jpg"),
            new Photog("Carlos Rivera", "Street", 2, "carlos.jpg"),
            new Photog("Lana Patel", "Wildlife", 5, "lana.jpg"),
            new Photog("Brian Adams", "Real Estate", 4, "brian.jpg")
    };

    // Bubble sort by rating (descending)
    for (int i = 0; i < photographers.length - 1; i++) {
        for (int j = 0; j < photographers.length - i - 1; j++) {
            if (photographers[j].getRating() < photographers[j + 1].getRating()) {
                Photog temp = photographers[j];
                photographers[j] = photographers[j + 1];
                photographers[j + 1] = temp;
            }
        }
    }

    request.setAttribute("photographers", java.util.Arrays.asList(photographers));
%>

<!DOCTYPE html>
<html>
<head>
    <title>Top Rated Photographers</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <style>
        body { background: #000000; }
        .main-content { flex-grow: 1; padding: 30px; }
        .photographer-card {
            background: white;
            border: 1px solid #ddd;
            border-radius: 10px;
            padding: 20px;
            text-align: center;
            box-shadow: 0 2px 8px rgba(0,0,0,0.05);
            margin-bottom: 20px;
        }
        .rating-stars input { display: none; }
        .rating-stars label {
            font-size: 20px;
            color: #ccc;
            cursor: pointer;
        }
        .rating-stars input:checked ~ label,
        .rating-stars label:hover,
        .rating-stars label:hover ~ label {
            color: #f39c12;
        }
        .photographer-card img {
            width: 80px;
            height: 80px;
            object-fit: cover;
            border-radius: 50%;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<div class="d-flex">
    <jsp:include page="sidebar.jsp"/>
    <div class="main-content">
        <h3>Top Rated Photographers (Sorted by Rating)</h3>
        <div class="row">
            <c:forEach var="photog" items="${photographers}">
                <div class="col-md-4">
                    <div class="photographer-card">
                        <img src="images/${photog.image}" alt="${photog.name}">
                        <h5>${photog.name}</h5>
                        <p>${photog.category}</p>
                        <div>
                            <c:forEach begin="1" end="5" var="i">
                                <c:choose>
                                    <c:when test="${i <= photog.rating}">★</c:when>
                                    <c:otherwise>☆</c:otherwise>
                                </c:choose>
                            </c:forEach>
                        </div>
                        <form method="post" action="rating.jsp">
                            <input type="hidden" name="photographer" value="${photog.name}">
                            <div class="rating-stars d-flex justify-content-center my-2">
                                <input type="radio" id="${photog.name}-star5" name="rating" value="5" required>
                                <label for="${photog.name}-star5">★</label>
                                <input type="radio" id="${photog.name}-star4" name="rating" value="4">
                                <label for="${photog.name}-star4">★</label>
                                <input type="radio" id="${photog.name}-star3" name="rating" value="3">
                                <label for="${photog.name}-star3">★</label>
                                <input type="radio" id="${photog.name}-star2" name="rating" value="2">
                                <label for="${photog.name}-star2">★</label>
                                <input type="radio" id="${photog.name}-star1" name="rating" value="1">
                                <label for="${photog.name}-star1">★</label>
                            </div>
                            <button class="btn btn-sm btn-outline-primary">Submit Rating</button>
                        </form>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
</body>
</html>