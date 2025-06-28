package com.ma.Music_app.Controller.Song;

import com.ma.Music_app.Model.Songs;
import com.ma.Music_app.respository.SongRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/api/music")
public class PlayMusic {

    @Autowired
    private SongRepository songRepository;

    @GetMapping("/play/{id}")
    public ResponseEntity<?> playMusic(@PathVariable Integer id) {
        Optional<Songs> songOptional = songRepository.findById(id);
        if (songOptional.isEmpty()) {
            return ResponseEntity.badRequest().body("Bài hát không tồn tại");
        }

        Songs song = songOptional.get();

        return ResponseEntity.ok().body(song.getSongFile());
    }
}

