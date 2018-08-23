package com.codingdojo.tomntaylor.equipship.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.codingdojo.tomntaylor.equipship.models.Category;
import com.codingdojo.tomntaylor.equipship.services.CategoryService;

@RestController
public class ApiController {
	
	@Autowired
	CategoryService catServ;
	
	@PostMapping("/searchCat")
	public ResponseEntity<?> searchCat(@RequestParam("search") String search) {
		List<Category> searches = catServ.searchByName(search);
		return ResponseEntity.ok(searches);	}
}
