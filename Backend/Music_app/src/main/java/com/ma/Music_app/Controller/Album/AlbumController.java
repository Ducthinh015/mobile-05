package com.ma.Music_app.Controller.Album;

import com.ma.Music_app.DTO.Album.AlbumRequest;
import com.ma.Music_app.DTO.Album.AlbumResponse;
import com.ma.Music_app.Model.Album;
import com.ma.Music_app.respository.AlbumRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

        import java.util.Optional;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/albums")
public class AlbumController {
    @Autowired
    private AlbumRepository albumRepository;

    // Tạo album mới
    @PostMapping
    public ResponseEntity<?> createAlbum(@RequestBody AlbumRequest request) {
        Album album = new Album();
        album.setTitle(request.getTitle());
        album.setReleaseYear(request.getReleaseYear());
        Album savedAlbum = albumRepository.save(album);

        AlbumResponse response = new AlbumResponse();
        response.setAlbumID(savedAlbum.getAlbumID());
        response.setTitle(savedAlbum.getTitle());
        response.setReleaseYear(savedAlbum.getReleaseYear());
        return ResponseEntity.status(HttpStatus.CREATED).body(response);
    }

    // Lưu (cập nhật) album
    @PostMapping("/{id}")
    public ResponseEntity<?> updateAlbum(@PathVariable Integer id, @RequestBody AlbumRequest request) {
        Optional<Album> albumOpt = albumRepository.findById(id);
        if (albumOpt.isEmpty()) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND)
                    .body("Album không tồn tại");
        }

        Album album = albumOpt.get();
        album.setTitle(request.getTitle());
        album.setReleaseYear(request.getReleaseYear());
        Album updatedAlbum = albumRepository.save(album);

        AlbumResponse response = new AlbumResponse();
        response.setAlbumID(updatedAlbum.getAlbumID());
        response.setTitle(updatedAlbum.getTitle());
        response.setReleaseYear(updatedAlbum.getReleaseYear());
        return ResponseEntity.ok(response);
    }

    // Xem chi tiết album
    @GetMapping("/{id}")
    public ResponseEntity<?> getAlbumById(@PathVariable Integer id) {
        Optional<Album> albumOpt = albumRepository.findById(id);
        if (albumOpt.isEmpty()) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND)
                    .body("Album không tồn tại");
        }

        Album album = albumOpt.get();
        AlbumResponse response = new AlbumResponse();
        response.setAlbumID(album.getAlbumID());
        response.setTitle(album.getTitle());
        response.setReleaseYear(album.getReleaseYear());
        return ResponseEntity.ok(response);
    }

    // Lấy danh sách tất cả album
    @GetMapping
    public ResponseEntity<?> getAllAlbums() {
        return ResponseEntity.ok(albumRepository.findAll().stream().map(album -> {
            AlbumResponse response = new AlbumResponse();
            response.setAlbumID(album.getAlbumID());
            response.setTitle(album.getTitle());
            response.setReleaseYear(album.getReleaseYear());
            return response;
        }).collect(Collectors.toList()));
    }
}
