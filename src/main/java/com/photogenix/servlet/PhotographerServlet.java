package com.photogenix.servlet;

import com.photogenix.model.Photographer;
import com.photogenix.service.PhotographerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/photographer")
public class PhotographerServlet extends HttpServlet {
    private PhotographerService photographerService = new PhotographerService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("add".equals(action)) {
            Photographer photographer = new Photographer();
            photographer.setName(request.getParameter("name"));
            photographer.setSpecialization(request.getParameter("specialization"));
            photographer.setContactInfo(request.getParameter("contactInfo"));

            photographerService.addPhotographer(photographer, request);
            response.sendRedirect("photographer.jsp");

        } else if ("update".equals(action)) {
            String oldName = request.getParameter("oldName");
            Photographer photographer = new Photographer();
            photographer.setName(request.getParameter("name"));
            photographer.setSpecialization(request.getParameter("specialization"));
            photographer.setContactInfo(request.getParameter("contactInfo"));

            photographerService.updatePhotographer(oldName, photographer, request);
            response.sendRedirect("photographer.jsp");

        } else if ("delete".equals(action)) {
            String name = request.getParameter("name");
            photographerService.deletePhotographer(name, request);
            response.sendRedirect("photographer.jsp");
        }
    }
}