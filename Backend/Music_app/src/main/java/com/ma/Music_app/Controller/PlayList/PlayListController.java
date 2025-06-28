package com.ma.Music_app.Controller.PlayList;

import com.ma.Music_app.Model.Playlist;
import com.ma.Music_app.respository.PlayListRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/playlists")
public class PlayListController {

    @Autowired
    private PlayListRepository playlistRepository;


    @GetMapping
    public List<Playlist> getAllPlaylists() {
        return playlistRepository.findAll();
    }


    @GetMapping("/{id}")
    public ResponseEntity<?> getPlaylistById(@PathVariable Integer id) {
        Optional<Playlist> playlist = playlistRepository.findById(id);
        return playlist.map(ResponseEntity::ok)
                .orElseGet(() -> ResponseEntity.notFound().build());
    }


    @PostMapping
    public ResponseEntity<Playlist> createPlaylist(@RequestBody Playlist playlist) {
        Playlist saved = playlistRepository.save(playlist);
        return ResponseEntity.ok(saved);
    }


    @PutMapping("/{id}")
    public ResponseEntity<?> updatePlaylist(@PathVariable Integer id, @RequestBody Playlist updated) {
        return playlistRepository.findById(id).map(playlist -> {
            playlist.setName(updated.getName());
            playlistRepository.save(playlist);
            return ResponseEntity.ok(playlist);
        }).orElseGet(() -> ResponseEntity.notFound().build());
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<?> deletePlaylist(@PathVariable Integer id) {
        return playlistRepository.findById(id).map(playlist -> {
            playlistRepository.delete(playlist);
            return ResponseEntity.ok().build();
        }).orElseGet(() -> ResponseEntity.notFound().build());
    }
}