package com.ma.Music_app.Model;

import lombok.*;
import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AlbumSongId implements Serializable {
    private Integer albumID;
    private Integer songid;
}
