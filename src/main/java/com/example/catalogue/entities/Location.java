package com.example.catalogue.entities;

import lombok.Getter;
import lombok.Setter;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Getter
@Document
public class Location {
    @Setter
    @Id
    private String id;

    @Setter
    private String clientId;

    @Setter
    private String articleId;

    @Setter
    private String startDate;


    @Setter
    private int duration;

}
