package com.codingdojo.tomntaylor.equipship.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.tomntaylor.equipship.models.Review;
import com.codingdojo.tomntaylor.equipship.repositories.ReviewRepository;

@Service
public class ReviewService {
	private ReviewRepository reviewRepository;
	
	public ReviewService(ReviewRepository reviewRepository) {
		this.reviewRepository = reviewRepository;
	}
	
	public Review createReview(Review review) {
		return reviewRepository.save(review);
	}
	
	public Review findById(Long id) {
		Optional<Review> r = reviewRepository.findById(id);
		if(r.isPresent()) {
			return r.get();
		}else {
			return null;
		}
	}
	
	public List<Review> allReviews() {
		return (List<Review>) reviewRepository.findAll();
	}
	
	public void updateReview(Review review) {
		reviewRepository.save(review);
	}
	
	public void deleteReview(Long id) {
		reviewRepository.deleteById(id);
	}
}
