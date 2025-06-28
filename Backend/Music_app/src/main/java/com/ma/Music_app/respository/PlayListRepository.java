package com.ma.Music_app.respository;

import com.ma.Music_app.Model.Playlist;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PlayListRepository extends JpaRepository<Playlist, Integer> {
}
