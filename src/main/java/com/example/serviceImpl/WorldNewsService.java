package com.example.serviceImpl;

import java.io.IOException;

import org.bson.BsonBinarySubType;
import org.bson.types.Binary;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.*;
import com.example.Repository.WorldNewsRepository;
import com.example.model.WorldNews;

@Service
public class WorldNewsService 
{
	@Autowired
	WorldNewsRepository newsRepository;
	
	public String addPhoto(String title, MultipartFile file) throws IOException { 
        WorldNews photo = new WorldNews(title); 
        photo.setImage(
          new Binary(BsonBinarySubType.BINARY, file.getBytes())); 
        photo = newsRepository.insert(photo); return photo.getId(); 
    }
	
    public WorldNews getPhoto(String id) { 
        return newsRepository.findById(id).get(); 
    }
}
