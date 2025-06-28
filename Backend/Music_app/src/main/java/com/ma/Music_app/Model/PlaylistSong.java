package com.ma.Music_app.Model;

import jakarta.persistence.*;
import lombok.*;
import java.io.Serializable;


@Entity
@IdClass(PlaylistSongId.class)
@Table(name = "playlist_song")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class PlaylistSong {

    @Id
    private Integer playlistID;

    @Id
    private Integer songID;

    @ManyToOne
    @JoinColumn(name = "playlistID")
    private Playlist playlist;

    @ManyToOne
    @JoinColumn(name = "songid")
    private Songs song;
}
