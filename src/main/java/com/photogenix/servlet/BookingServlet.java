package com.photogenix.servlet;

import com.photogenix.model.Booking;
import com.photogenix.service.BookingService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/booking")
public class BookingServlet extends HttpServlet {
    private BookingService bookingService = new BookingService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");

        if ("create".equals(action)) {
            String eventDetails = request.getParameter("eventDetails");
            String photographer = request.getParameter("photographer");
            String user = request.getParameter("user");
            String status = request.getParameter("status");

            Booking booking = new Booking();
            booking.setEventDetails(eventDetails);
            booking.setPhotographer(photographer);
            booking.setUser(user);
            booking.setStatus(status);

            bookingService.createBooking(booking, request);
            response.sendRedirect("booking.jsp");

        } else if ("update".equals(action)) {
            String eventDetails = request.getParameter("eventDetails");
            String newStatus = request.getParameter("status");

            bookingService.updateBookingStatus(eventDetails, newStatus, request);
            response.sendRedirect("booking.jsp");

        } else if ("delete".equals(action)) {
            String eventDetails = request.getParameter("eventDetails");
            bookingService.deleteBooking(eventDetails, request);
            response.sendRedirect("booking.jsp");
        }
    }
}