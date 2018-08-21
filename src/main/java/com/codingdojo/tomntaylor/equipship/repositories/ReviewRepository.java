package com.codingdojo.tomntaylor.equipship.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.tomntaylor.equipship.models.Review;
import com.codingdojo.tomntaylor.equipship.models.User;

@Repository
public interface ReviewRepository extends CrudRepository<Review, Long> {
	List<Review> findAll();
	List<Review> findAllByReviewer(User reviewer);
	List<Review> findAllByReviewee(User reviewee);

}
