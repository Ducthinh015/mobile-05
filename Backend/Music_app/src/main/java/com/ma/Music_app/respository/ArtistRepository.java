package com.ma.Music_app.respository;

import com.ma.Music_app.Model.Artist;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ArtistRepository extends JpaRepository<Artist, Integer> {
}
