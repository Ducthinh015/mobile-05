package com.ma.Music_app.Controller;

import com.ma.Music_app.Model.Songs;
import com.ma.Music_app.respository.SongRepository;
import jakarta.persistence.criteria.Predicate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/search")
public class SearchController {

    @Autowired
    private SongRepository songRepository;

    @GetMapping
    public ResponseEntity<List<Songs>> searchSongs(
            @RequestParam(required = false) String song,
            @RequestParam(required = false) String artist,
            @RequestParam(required = false) String album) {

        Specification<Songs> spec = (root, query, cb) -> {
            List<Predicate> predicates = new ArrayList<>();

            if (song != null && !song.isEmpty()) {
                predicates.add(cb.like(cb.lower(root.get("title")), "%" + song.toLowerCase() + "%"));
            }

            if (artist != null && !artist.isEmpty()) {
                predicates.add(cb.like(cb.lower(root.get("artist").get("name")), "%" + artist.toLowerCase() + "%"));
            }

            if (album != null && !album.isEmpty()) {
                predicates.add(cb.like(cb.lower(root.get("album").get("name")), "%" + album.toLowerCase() + "%"));
            }

            return cb.and(predicates.toArray(new Predicate[0]));
        };

        return ResponseEntity.ok(songRepository.findAll(spec));
    }
}
