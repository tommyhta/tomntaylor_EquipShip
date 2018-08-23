package com.codingdojo.tomntaylor.equipship.models;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;

@Entity
@Table(name="users")
public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	@Email(message="Email must be valid")
	private String email;
	@Size(min=5, message="Password must be greater than 5 characters")
	private String password;
	@Transient
	private String passwordConfirmation;
	@Size(min=2, message="First name must be at least two characters")
	private String firstName;
	@Size(min=2, message="Last name must be at least two characters")
	private String lastName;
	@Size(min=2, message="City must be at least two characters")
	private String city;
	private String state;
	private String tagline;
	private String description;
	private float billingRate;
	private float totalEarnings;
	private float avgRating;
	private int user_level;
	@Column(updatable=false)
	private Date createdAt;
	private Date updatedAt;
	//relationships
	//category
	@ManyToMany(fetch=FetchType.LAZY)
	@JoinTable(
		name = "user_categories",
		joinColumns = @JoinColumn(name="user_id"),
		inverseJoinColumns = @JoinColumn(name="category_id")
		)
	private List<Category> userCategories;
	//message
	@OneToMany(mappedBy="sender", fetch=FetchType.LAZY)
	private List<Message> sentMessages;
	@OneToMany(mappedBy="recipient", fetch=FetchType.LAZY)
	private List<Message> receivedMessages;
	//review
	@OneToMany(mappedBy="reviewer", fetch=FetchType.LAZY)
	private List<Review> sentReviews;
	@OneToMany(mappedBy="reviewee", fetch=FetchType.LAZY)
	private List<Review> receivedReviews;
	//meeting
	@OneToMany(mappedBy="requestor", fetch=FetchType.LAZY)
	private List<Meeting> sentMeetings;
	@OneToMany(mappedBy="requestee", fetch=FetchType.LAZY)
	private List<Meeting> receivedMeetings;
	//mentors
	@ManyToMany
	@JoinTable(
		name="user_mentors",
		joinColumns = @JoinColumn(name="user_id"),
		inverseJoinColumns = @JoinColumn(name = "mentor_id")
		)
	private List<User> mentors;
	@ManyToMany(mappedBy = "mentors")
	private List<User> mentees; 
	public User() {
		super();
	}

	public float getTotalEarnings() {
		return totalEarnings;
	}

	public void setTotalEarnings(float totalEarnings) {
		this.totalEarnings = totalEarnings;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public float getBillingRate() {
		return billingRate;
	}

	public void setBillingRate(float billingRate) {
		this.billingRate = billingRate;
	}

	public float getAvgRating() {
		return avgRating;
	}

	public void setAvgRating() {
		float rating = 0;
		List<Review> allreviews = this.receivedReviews;
		for(int i = 0; i < allreviews.size(); i++) {
			rating += (float) allreviews.get(i).getRating();
		}
		this.avgRating = rating / allreviews.size();
	}

	public List<Review> getSentReviews() {
		return sentReviews;
	}

	public void setSentReviews(List<Review> sentReviews) {
		this.sentReviews = sentReviews;
	}

	public List<Review> getReceivedReviews() {
		return receivedReviews;
	}

	public void setReceivedReviews(List<Review> receivedReviews) {
		this.receivedReviews = receivedReviews;
	}

	public List<Meeting> getSentMeetings() {
		return sentMeetings;
	}

	public void setSentMeetings(List<Meeting> sentMeetings) {
		this.sentMeetings = sentMeetings;
	}

	public List<Meeting> getReceivedMeetings() {
		return receivedMeetings;
	}

	public void setReceivedMeetings(List<Meeting> receivedMeetings) {
		this.receivedMeetings = receivedMeetings;
	}

	public List<Message> getSentMessages() {
		return sentMessages;
	}

	public void setSentMessages(List<Message> sentMessages) {
		this.sentMessages = sentMessages;
	}

	public List<Message> getReceivedMessages() {
		return receivedMessages;
	}

	public void setReceivedMessages(List<Message> receivedMessages) {
		this.receivedMessages = receivedMessages;
	}

	public List<Category> getUserCategories() {
		return userCategories;
	}

	public void setUserCategories(List<Category> userCategories) {
		this.userCategories = userCategories;
	}
	

	public int getUser_level() {
		return user_level;
	}

	public void setUser_level(int user_level) {
		this.user_level = user_level;
	}

	public String getTagline() {
		return tagline;
	}

	public void setTagline(String tagline) {
		this.tagline = tagline;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPasswordConfirmation() {
		return passwordConfirmation;
	}

	public void setPasswordConfirmation(String passwordConfirmation) {
		this.passwordConfirmation = passwordConfirmation;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	

	public List<User> getMentors() {
		return mentors;
	}

	public void setMentors(List<User> mentors) {
		this.mentors = mentors;
	}

	public List<User> getMentees() {
		return mentees;
	}

	public void setMentees(List<User> mentees) {
		this.mentees = mentees;
	}

	@PrePersist
	protected void onCreate() {
		this.createdAt = new Date();
	}
	
	@PreUpdate
	protected void onUpdate() {
		this.updatedAt = new Date();
	}
}

