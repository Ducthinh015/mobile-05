package com.ma.Music_app.Controller.Song;

import com.ma.Music_app.DTO.Song.SongRequest;
import com.ma.Music_app.Model.Artist;
import com.ma.Music_app.Model.Songs;
import com.ma.Music_app.Service.SongService;
import com.ma.Music_app.respository.ArtistRepository;
import com.ma.Music_app.respository.SongRepository;
import com.mpatric.mp3agic.InvalidDataException;
import com.mpatric.mp3agic.Mp3File;
import com.mpatric.mp3agic.UnsupportedTagException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import jakarta.persistence.criteria.Predicate;

@RestController
@RequestMapping("/api")
public class SongController {
    @Autowired
    private SongRepository songsRepository;

    @Autowired
    private ArtistRepository artistRepository;

    @Autowired
    private SongService songService;

    @PostMapping("/upload")
    public ResponseEntity<?> uploadSong(
            @RequestParam("songFile") MultipartFile songFile,
            @RequestParam("songImg") MultipartFile songImg,
            @RequestParam("name") String name,
            @RequestParam("title") String title,
            @RequestParam("lyrics") String lyrics,
            @RequestParam("artistId") Integer artistId
    ) {
        try {
            // Tạo thư mục nếu chưa có
            File songDir = new File("uploads/songs/");
            File imgDir = new File("uploads/images/");
            if (!songDir.exists()) songDir.mkdirs();
            if (!imgDir.exists()) imgDir.mkdirs();

            // Tạo tên file mới tránh trùng
            String songFileName = System.currentTimeMillis() + "_" + songFile.getOriginalFilename();
            String imgFileName = System.currentTimeMillis() + "_" + songImg.getOriginalFilename();

            // Lưu file
            Path songPath = Paths.get("uploads/songs/" + songFileName);
            Path imgPath = Paths.get("uploads/images/" + imgFileName);

            Files.copy(songFile.getInputStream(), songPath, StandardCopyOption.REPLACE_EXISTING);
            Files.copy(songImg.getInputStream(), imgPath, StandardCopyOption.REPLACE_EXISTING);

            // Lưu vào DB (chỉ lưu tên file hoặc đường dẫn tương đối)
            Songs song = new Songs();
            song.setName(name);
            song.setTitle(title);
            song.setLyrics(lyrics);
            song.setSongFile(songFileName); // chỉ lưu tên file, không phải path tuyệt đối
            song.setSongImg(imgFileName);

            Artist artist = artistRepository.findById(artistId).orElseThrow();
            song.setArtist(artist);

            songsRepository.save(song);

            return ResponseEntity.ok("Upload thành công!");

        } catch (IOException e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                    .body("Lỗi khi upload file: " + e.getMessage());
        }
    }
    @GetMapping("/{id}/duration")
    public ResponseEntity<?> getSongDuration(@PathVariable Integer id) {
        String filePath = songService.getSongDuration(id);
        try {
            Mp3File mp3File = new Mp3File(filePath);
            int durationInSeconds = (int) mp3File.getLengthInSeconds();

            Map<String, Object> response = new HashMap<>();
            response.put("id", id);
            response.put("duration", durationInSeconds);
            response.put("formatted", String.format("%02d:%02d", durationInSeconds / 60, durationInSeconds % 60));

            return ResponseEntity.ok(response);
        } catch (IOException | UnsupportedTagException | InvalidDataException e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Không thể đọc file MP3.");
        }
    }
}