package com.photogenix.service;

import com.photogenix.model.Booking;
import com.photogenix.util.FileUtil;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class BookingService {
    private String getFilePath(HttpServletRequest request) {
        return request.getServletContext().getRealPath("/WEB-INF/bookings.txt");
    }

    public void createBooking(Booking booking, HttpServletRequest request) throws IOException {
        String data = booking.getEventDetails() + "," + booking.getPhotographer() + "," + booking.getUser() + "," + booking.getStatus();
        FileUtil.appendToFile(getFilePath(request), data);
    }

    public List<Booking> getAllBookings(HttpServletRequest request) throws IOException {
        List<Booking> bookings = new ArrayList<>();
        List<String> lines = FileUtil.readFile(getFilePath(request));
        for (String line : lines) {
            String[] parts = line.split(",");
            if (parts.length >= 4) {
                Booking booking = new Booking();
                booking.setEventDetails(parts[0]);
                booking.setPhotographer(parts[1]);
                booking.setUser(parts[2]);
                booking.setStatus(parts[3]);
                bookings.add(booking);
            }
        }
        return bookings;
    }

    public void updateBookingStatus(String eventDetails, String status, HttpServletRequest request) throws IOException {
        List<String> lines = FileUtil.readFile(getFilePath(request));
        for (int i = 0; i < lines.size(); i++) {
            String[] parts = lines.get(i).split(",");
            if (parts[0].equals(eventDetails)) {
                lines.set(i, parts[0] + "," + parts[1] + "," + parts[2] + "," + status);
                break;
            }
        }
        FileUtil.writeToFile(getFilePath(request), lines);
    }

    public void deleteBooking(String eventDetails, HttpServletRequest request) throws IOException {
        List<String> lines = FileUtil.readFile(getFilePath(request));
        lines.removeIf(line -> line.startsWith(eventDetails + ","));
        FileUtil.writeToFile(getFilePath(request), lines);
    }
}