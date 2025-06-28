package com.ma.Music_app.Model;

import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;

@Entity
@Table(name = "album_song")
@IdClass(AlbumSongId.class)
@Data
@NoArgsConstructor
@AllArgsConstructor
public class AlbumSong implements Serializable {

    @Id
    private Integer albumID;

    @Id
    private Integer songid;

    @ManyToOne
    @JoinColumn(name = "albumID", insertable = false, updatable = false)
    private Album album;

    @ManyToOne
    @JoinColumn(name = "songid", insertable = false, updatable = false)
    private Songs song;
}
