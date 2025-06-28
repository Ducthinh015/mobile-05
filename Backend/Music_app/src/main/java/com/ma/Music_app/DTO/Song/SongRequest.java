package com.ma.Music_app.DTO.Song;

import lombok.Data;

@Data
public class SongRequest {
    private String name;
    private String title;
    private String lyrics;
    private Integer artistId;
    private String songUrl;
}
