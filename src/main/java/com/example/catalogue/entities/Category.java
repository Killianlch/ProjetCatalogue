package com.example.catalogue.entities;


import lombok.Getter;
import lombok.Setter;
import org.springframework.data.annotation.Id;

import javax.persistence.*;
import java.util.Set;

@Getter
@Entity
public class Category {
    @Setter
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Setter
    private String name;

    @Setter
    @OneToMany(mappedBy = "category")
    private Set<Article> articles;

    // Getters and Setters
}
