package com.example.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import org.bson.types.Binary;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.Repository.WorldNewsRepository;
import com.example.model.WorldNews;
import com.example.serviceImpl.WorldNewsService;

@Controller
public class WorldNewsController 
{
	@Autowired
	WorldNewsService newsService;
	
	@Autowired
	WorldNewsRepository worldRepository;
	
    @GetMapping("/worldnews/{id}")
    public String getPhoto(@PathVariable String id, Model model) {
        WorldNews photo = newsService.getPhoto(id);
        model.addAttribute("title", photo.getTitle());
        model.addAttribute("image", Base64.getEncoder().encodeToString(photo.getImage().getData()));
        return "worldnews";
    }
    @GetMapping("/worldnews/upload")
    public String uploadPhoto(Model model) {
        model.addAttribute("message", "hello");
        return "worldnewsadd";
    }
    @GetMapping("/allPhotos")
	public String view3(Model m,Iterable<String> ids) 
	{
		Iterable<WorldNews> list = newsService.findAllById(ids);
		if (!(list==null)) 
		{
			m.addAttribute("news", Base64.getEncoder().encodeToString(((WorldNews) list).getImage().getData()));
		} 
		else {
			m.addAttribute("msg", "Sorry record not found!");
		}
		return "allphotos";
	}
    
	@PostMapping("/worldnews/add")
    public String addPhoto(@RequestParam("title") String title, @RequestParam("image") MultipartFile image, Model model) throws IOException {
        String id = newsService.addPhoto(title, image);
        return "redirect:/worldnews/" + id;
    }
}
