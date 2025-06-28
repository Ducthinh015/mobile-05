package com.ma.Music_app.Model;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "album")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Album {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer albumID;

    @Column(length = 100)
    private String title;

    @ManyToOne
    @JoinColumn(name = "artistid")
    private Artist artist;

    private Integer releaseYear;

}
