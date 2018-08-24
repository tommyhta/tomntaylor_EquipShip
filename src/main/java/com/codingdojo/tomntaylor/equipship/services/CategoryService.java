package com.codingdojo.tomntaylor.equipship.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.tomntaylor.equipship.models.Category;
import com.codingdojo.tomntaylor.equipship.repositories.CategoryRepository;

@Service
public class CategoryService {
	private CategoryRepository categoryRepository;
	
	public CategoryService(CategoryRepository categoryRepository) {
		this.categoryRepository = categoryRepository;
	}
	
	public void createCategory(Category category) {
		categoryRepository.save(category);
	}
	
	public Category findById(Long id) {
		Optional<Category> c = categoryRepository.findById(id);
		if(c.isPresent()) {
			return c.get();
		} else {
			return null;
		}
	}
	
	public List<Category> allCategories() {
		return (List<Category>) categoryRepository.findAll();
	}
	
	public void updateCategory(Category category) {
		categoryRepository.save(category);
	}
	
	public void deleteCategory(Long id) {
		categoryRepository.deleteById(id);
	}
	
	public List<Category> searchByName(String search){
		return categoryRepository.findByNameContaining(search);
	}
}
