package com.ma.Music_app.respository;

import com.ma.Music_app.Model.Album;
import org.springframework.data.jpa.repository.JpaRepository;
public interface AlbumRepository extends JpaRepository<Album, Integer> {
}
