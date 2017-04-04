package com.whatshappening.model;

import com.mysql.jdbc.Blob;

public class Events {

	private String name;
	private String date;
	private String time;
	private String location;
	private String cost;
	private String description;
	private Blob image;
	private String category;
	private int id;
	private String image_location;
	
	
	public Events(String name, String date, String time, String location, String cost, String description, Blob image,
			String category, int id, String image_location) {
		super();
		this.name = name;
		this.date = date;
		this.time = time;
		this.location = location;
		this.cost = cost;
		this.description = description;
		this.image = image;
		this.category = category;
		this.id = id;
		this.image_location = image_location;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the date
	 */
	public String getDate() {
		return date;
	}
	/**
	 * @param date the date to set
	 */
	public void setDate(String date) {
		this.date = date;
	}
	/**
	 * @return the time
	 */
	public String getTime() {
		return time;
	}
	/**
	 * @param time the time to set
	 */
	public void setTime(String time) {
		this.time = time;
	}
	/**
	 * @return the location
	 */
	public String getLocation() {
		return location;
	}
	/**
	 * @param location the location to set
	 */
	public void setLocation(String location) {
		this.location = location;
	}
	/**
	 * @return the cost
	 */
	public String getCost() {
		return cost;
	}
	/**
	 * @param cost the cost to set
	 */
	public void setCost(String cost) {
		this.cost = cost;
	}
	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}
	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	/**
	 * @return the image
	 */
	public Blob getImage() {
		return image;
	}
	/**
	 * @param image the image to set
	 */
	public void setImage(Blob image) {
		this.image = image;
	}
	/**
	 * @return the category
	 */
	public String getCategory() {
		return category;
	}
	/**
	 * @param category the category to set
	 */
	public void setCategory(String category) {
		this.category = category;
	}
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the image_location
	 */
	public String getImage_location() {
		return image_location;
	}
	/**
	 * @param image_location the image_location to set
	 */
	public void setImage_location(String image_location) {
		this.image_location = image_location;
	}

	
}
