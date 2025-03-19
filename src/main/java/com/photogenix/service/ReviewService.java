package com.photogenix.service;

import com.photogenix.model.Review;
import com.photogenix.util.FileUtil;

import java.io.IOException;
import java.util.List;

public class ReviewService {
    private static final String FILE_PATH = "reviews.txt";

    public void addReview(Review review) throws IOException {
        FileUtil.appendToFile(FILE_PATH, review.getPhotographer() + "," + review.getUser() + "," + review.getComment() + "," + review.getRating());
    }

    public List<String> getReviews() throws IOException {
        return FileUtil.readFile(FILE_PATH);
    }

    public void updateReview(String photographer, String user, Review review) throws IOException {
        List<String> lines = FileUtil.readFile(FILE_PATH);
        for (int i = 0; i < lines.size(); i++) {
            String[] parts = lines.get(i).split(",");
            if (parts[0].equals(photographer) && parts[1].equals(user)) {
                lines.set(i, review.getPhotographer() + "," + review.getUser() + "," + review.getComment() + "," + review.getRating());
                break;
            }
        }
        FileUtil.writeToFile(FILE_PATH, lines);
    }

    public void deleteReview(String photographer, String user) throws IOException {
        List<String> lines = FileUtil.readFile(FILE_PATH);
        lines.removeIf(line -> line.startsWith(photographer + "," + user + ","));
        FileUtil.writeToFile(FILE_PATH, lines);
    }
}