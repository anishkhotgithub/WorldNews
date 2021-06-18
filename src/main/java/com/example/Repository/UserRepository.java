package com.example.Repository;

import org.springframework.context.annotation.Primary;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import com.example.model.User;

@Repository
@Primary
public interface UserRepository extends MongoRepository<User,String>
{
	User findByUserid(String userid);
	User findByUsername(String username);
}
