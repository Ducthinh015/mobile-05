package com.ma.Music_app.Model;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "songs")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Songs {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer songid;

    @Column(length = 100)
    private String name;

    @Column(nullable = false, length = 100)
    private String title;

    @Column(length = 255)
    private String lyrics;

    @ManyToOne
    @JoinColumn(name = "artistid", referencedColumnName = "artistid")
    private Artist artist;

    @Column(name = "song_file")
    private String songFile;

    @Column(name = "song_img")
    private String songImg;
}
