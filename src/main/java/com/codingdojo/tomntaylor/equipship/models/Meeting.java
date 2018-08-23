package com.codingdojo.tomntaylor.equipship.models;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="meetings")
public class Meeting {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	private String time;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date date;
	private String location;
	private boolean accepted;
	private boolean completed;
	@Column(updatable=false)
	private Date createdAt;
	private Date updatedAt;
	//relationships
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="requestor_id")
	private User requestor;
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="requestee_id")
	private User requestee;
	
	public Meeting() {
		
	}
	

	public Meeting(String time, Date date, String location, boolean accepted, boolean completed, User requestor,
			User requestee) {
		super();
		this.time = time;
		this.date = date;
		this.location = location;
		this.accepted = accepted;
		this.completed = completed;
		this.requestor = requestor;
		this.requestee = requestee;
	}


	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}
	
	public String gimmeDate() {
		DateFormat iono = new SimpleDateFormat("MM/dd/yyyy");
		String daTe = iono.format(this.date);
		return daTe;
	}
	

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
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

	public User getRequestor() {
		return requestor;
	}

	public void setRequestor(User requestor) {
		this.requestor = requestor;
	}

	public User getRequestee() {
		return requestee;
	}

	public void setRequestee(User requestee) {
		this.requestee = requestee;
	}
	
	public boolean isAccepted() {
		return accepted;
	}

	public void setAccepted(boolean accepted) {
		this.accepted = accepted;
	}

	public boolean isCompleted() {
		return completed;
	}

	public void setCompleted(boolean completed) {
		this.completed = completed;
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
