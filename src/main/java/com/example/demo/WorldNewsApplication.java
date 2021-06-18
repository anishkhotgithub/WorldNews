package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.mongodb.repository.config.EnableMongoRepositories;

@SpringBootApplication
@ComponentScan(basePackages = "com.example")
@EntityScan("com.example.model")
@EnableMongoRepositories("com.example.repository")
public class WorldNewsApplication {

	public static void main(String[] args) {
		SpringApplication.run(WorldNewsApplication.class, args);
	}

}
