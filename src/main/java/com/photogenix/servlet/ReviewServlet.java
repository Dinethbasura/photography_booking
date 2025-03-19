package com.photogenix.servlet;

import com.photogenix.model.Review;
import com.photogenix.service.ReviewService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/review")
public class ReviewServlet extends HttpServlet {
    private ReviewService reviewService = new ReviewService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if ("add".equals(action)) {
            String photographer = request.getParameter("photographer");
            String user = request.getParameter("user");
            String comment = request.getParameter("comment");
            int rating = Integer.parseInt(request.getParameter("rating"));

            Review review = new Review();
            review.setPhotographer(photographer);
            review.setUser(user);
            review.setComment(comment);
            review.setRating(rating);

            reviewService.addReview(review);
            response.sendRedirect("admin.jsp");
        } else if ("update".equals(action)) {
            String photographer = request.getParameter("photographer");
            String user = request.getParameter("user");
            String comment = request.getParameter("comment");
            int rating = Integer.parseInt(request.getParameter("rating"));

            Review review = new Review();
            review.setPhotographer(photographer);
            review.setUser(user);
            review.setComment(comment);
            review.setRating(rating);

            reviewService.updateReview(photographer, user, review);
            response.sendRedirect("admin.jsp");
        } else if ("delete".equals(action)) {
            String photographer = request.getParameter("photographer");
            String user = request.getParameter("user");
            reviewService.deleteReview(photographer, user);
            response.sendRedirect("admin.jsp");
        }
    }
}