package com.ma.Music_app.Service;

import com.ma.Music_app.Model.Songs;
import com.ma.Music_app.respository.SongRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SongService {
    @Autowired
    private SongRepository songRepository;

    public String getSongDuration(Integer id) {
        Songs songs = songRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("không tìm thấy bài hát"));

        return songs.getSongFile();
    }
}
