package com.codingdojo.tomntaylor.equipship.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.tomntaylor.equipship.models.Category;
import com.codingdojo.tomntaylor.equipship.models.User;

@Repository
public interface CategoryRepository extends CrudRepository<Category, Long>{
	List<Category> findAll();
	List<Category> findAllByUsersInCategory(User user);
}
