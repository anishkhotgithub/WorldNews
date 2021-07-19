package com.example.model;

import org.bson.types.Binary;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "WorldNews")
public class WorldNews
{
	@Id
	private String id;
	private String title;
	private Binary image;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Binary getImage() {
		return image;
	}
	public void setImage(Binary image) {
		this.image = image;
	}
	public WorldNews() {
		super();
	}
	public WorldNews(String title) {
		super();
		this.title = title;
	}
	public WorldNews(Binary image) {
		super();
		this.image = image;
	}
	@Override
	public String toString() {
		return "WorldNews [id=" + id + ", title=" + title + ", image=" + image + "]";
	}
	
	
}
