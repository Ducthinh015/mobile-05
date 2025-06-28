package com.ma.Music_app.Model;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "listens")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Listens {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer listensID;

    private Integer UsID;
    private Integer songID;
}

