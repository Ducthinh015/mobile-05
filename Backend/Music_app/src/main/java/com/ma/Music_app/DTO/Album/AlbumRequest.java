package com.ma.Music_app.DTO.Album;

public class AlbumRequest {
    private String title;
    private Integer releaseYear;

    // Getters and Setters
    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }
    public Integer getReleaseYear() { return releaseYear; }
    public void setReleaseYear(Integer releaseYear) { this.releaseYear = releaseYear; }
}