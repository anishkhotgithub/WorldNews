package com.example.Repository;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import com.example.model.WorldNews;

@Repository
public interface WorldNewsRepository extends MongoRepository<WorldNews,String>
{
	
}
