package com.example.catalogue.repositories;

import com.example.catalogue.entities.Location;
import org.springframework.data.mongodb.repository.MongoRepository;

public interface LocationRepository extends MongoRepository<Location, String> {
}
