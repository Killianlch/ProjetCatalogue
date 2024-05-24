package com.example.catalogue.entities;

import lombok.Getter;
import lombok.Setter;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class Location {
    @Getter
    @Setter
    @Id
    private String id;

    @Getter
    @Setter
    private String clientId;

    @Getter
    @Setter
    private String articleId;

    @Getter
    @Setter
    private String startDate;


    @Getter
    @Setter
    private int duration;

}
