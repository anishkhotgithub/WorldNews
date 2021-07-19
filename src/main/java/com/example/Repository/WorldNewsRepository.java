package com.example.Repository;

import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.model.WorldNews;

@Repository
public interface WorldNewsRepository extends MongoRepository<WorldNews,String>,CrudRepository<WorldNews, String>
{
	List<WorldNews> findAllByImage();	
}
