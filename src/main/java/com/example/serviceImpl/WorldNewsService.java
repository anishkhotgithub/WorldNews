package com.example.serviceImpl;

import java.io.IOException;

import org.bson.BsonBinarySubType;
import org.bson.types.Binary;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.*;
import com.example.Repository.WorldNewsRepository;
import com.example.model.WorldNews;

@Service
@Primary
public class WorldNewsService implements WorldNewsRepository
{
	@Autowired
	WorldNewsRepository newsRepository;
	
	@Autowired
	MongoTemplate mongoTemplate;
	
	public String addPhoto(String title, MultipartFile file) throws IOException { 
        WorldNews photo = new WorldNews(title); 
        photo.setImage(
          new Binary(BsonBinarySubType.BINARY, file.getBytes())); 
        photo = newsRepository.insert(photo); return photo.getId(); 
    }
	
    public WorldNews getPhoto(String id) { 
        return newsRepository.findById(id).get(); 
    }
    @Override
	public List<WorldNews> findAll() 
	{
		return mongoTemplate.findAll(WorldNews.class);
	}
	@Override
	public <S extends WorldNews> List<S> saveAll(Iterable<S> entities) {
		// TODO Auto-generated method stub
		return null ;
	}

	@Override
	public List<WorldNews> findAll(Sort sort) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends WorldNews> S insert(S entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends WorldNews> List<S> insert(Iterable<S> entities) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends WorldNews> List<S> findAll(Example<S> example) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends WorldNews> List<S> findAll(Example<S> example, Sort sort) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Page<WorldNews> findAll(Pageable pageable) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends WorldNews> S save(S entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Optional<WorldNews> findById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean existsById(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Iterable<WorldNews> findAllById(Iterable<String> ids) 
	{
		return newsRepository.findAllById(ids); 
	}

	@Override
	public long count() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void deleteById(String id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(WorldNews entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAllById(Iterable<? extends String> ids) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAll(Iterable<? extends WorldNews> entities) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAll() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public <S extends WorldNews> Optional<S> findOne(Example<S> example) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends WorldNews> Page<S> findAll(Example<S> example, Pageable pageable) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <S extends WorldNews> long count(Example<S> example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public <S extends WorldNews> boolean exists(Example<S> example) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<WorldNews> findAllByImage() {
		// TODO Auto-generated method stub
		return null;
	}
}
