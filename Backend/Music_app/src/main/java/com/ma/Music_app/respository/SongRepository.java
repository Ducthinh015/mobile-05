package com.ma.Music_app.respository;

import com.ma.Music_app.Model.Songs;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface SongRepository extends JpaRepository<Songs, Integer>, JpaSpecificationExecutor<Songs> {
}