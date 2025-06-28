package com.ma.Music_app.DTO.Album;

import java.time.LocalDateTime;

public class AlbumResponse {
    private Integer albumID;
    private String title;
    private Integer releaseYear;
    private LocalDateTime createdAt;

    // Getters and Setters
    public Integer getAlbumID() { return albumID; }
    public void setAlbumID(Integer albumID) { this.albumID = albumID; }
    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }
    public Integer getReleaseYear() { return releaseYear; }
    public void setReleaseYear(Integer releaseYear) { this.releaseYear = releaseYear; }

}