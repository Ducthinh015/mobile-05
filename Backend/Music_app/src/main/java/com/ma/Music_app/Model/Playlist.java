package com.ma.Music_app.Model;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;

@Entity
@Table(name = "playlist")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Playlist {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer playlistID;

    @Column(length = 100)
    private String name;

    @ManyToOne
    @JoinColumn(name = "UsID")
    private User user;

    private LocalDateTime creatAt;
}
