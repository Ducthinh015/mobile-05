package com.ma.Music_app.Model;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "artist")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Artist {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer artistID;

    private String name;


    private String description;
}
