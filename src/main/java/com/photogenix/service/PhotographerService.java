package com.photogenix.service;

import com.photogenix.model.Photographer;
import com.photogenix.util.FileUtil;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class PhotographerService {

    private String getFilePath(HttpServletRequest request) {
        return request.getServletContext().getRealPath("/WEB-INF/photographers.txt");
    }

    public void addPhotographer(Photographer photographer, HttpServletRequest request) throws IOException {
        String data = photographer.getName() + "," + photographer.getSpecialization() + "," + photographer.getContactInfo();
        FileUtil.appendToFile(getFilePath(request), data);
    }

    public List<Photographer> getPhotographers(HttpServletRequest request) throws IOException {
        List<Photographer> photographers = new ArrayList<>();
        List<String> lines = FileUtil.readFile(getFilePath(request));

        for (String line : lines) {
            String[] parts = line.split(",");
            if (parts.length >= 3) {
                Photographer photographer = new Photographer();
                photographer.setName(parts[0]);
                photographer.setSpecialization(parts[1]);
                photographer.setContactInfo(parts[2]);
                photographers.add(photographer);
            }
        }
        return photographers;
    }

    public void updatePhotographer(String oldName, Photographer photographer, HttpServletRequest request) throws IOException {
        List<String> lines = FileUtil.readFile(getFilePath(request));
        for (int i = 0; i < lines.size(); i++) {
            String[] parts = lines.get(i).split(",");
            if (parts[0].equals(oldName)) {
                lines.set(i, photographer.getName() + "," + photographer.getSpecialization() + "," + photographer.getContactInfo());
                break;
            }
        }
        FileUtil.writeToFile(getFilePath(request), lines);
    }

    public void deletePhotographer(String name, HttpServletRequest request) throws IOException {
        List<String> lines = FileUtil.readFile(getFilePath(request));
        lines.removeIf(line -> line.startsWith(name + ","));
        FileUtil.writeToFile(getFilePath(request), lines);
    }
}