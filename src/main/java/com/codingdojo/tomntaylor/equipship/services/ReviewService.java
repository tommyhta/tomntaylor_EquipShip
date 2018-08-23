package com.codingdojo.tomntaylor.equipship.services;

import java.util.List;

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
		Review r = reviewRepository.findOne(id);
		return r;
	}
	
	public List<Review> allReviews() {
		return (List<Review>) reviewRepository.findAll();
	}
	
	public void updateReview(Review review) {
		reviewRepository.save(review);
	}
	
	public void deleteReview(Long id) {
		reviewRepository.delete(id);
	}
}
