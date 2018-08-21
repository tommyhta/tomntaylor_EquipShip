package com.codingdojo.tomntaylor.equipship.models;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="categories")
public class Category {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	private String name;
	@ManyToMany(fetch=FetchType.LAZY)
	@JoinTable(
		name="user_categories",
		joinColumns = @JoinColumn(name="category_id"),
		inverseJoinColumns = @JoinColumn(name="user_id")
		)
	private List<User> usersInCategory;
	
	public Category() {
		super();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<User> getUsersInCategory() {
		return usersInCategory;
	}

	public void setUsersInCategory(List<User> usersInCategory) {
		this.usersInCategory = usersInCategory;
	}
	
}


