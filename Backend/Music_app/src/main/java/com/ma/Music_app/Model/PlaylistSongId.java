package com.ma.Music_app.Model;

import java.io.Serializable;
import java.util.Objects;

public class PlaylistSongId implements Serializable {
    private Long playlistID;
    private Long songID;

    // constructor mặc định
    public PlaylistSongId() {}

    public PlaylistSongId(Long playlistId, Long songId) {
        this.playlistID = playlistId;
        this.songID = songId;
    }
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof PlaylistSongId)) return false;
        PlaylistSongId that = (PlaylistSongId) o;
        return Objects.equals(playlistID, that.playlistID) &&
                Objects.equals(songID, that.songID);
    }

    @Override
    public int hashCode() {
        return Objects.hash(playlistID, songID);
    }
}
