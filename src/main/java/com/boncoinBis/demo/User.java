package com.boncoinBis.demo;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String name;
	@Column(name="contact_number")
	private int contactNumber;
	@Column(name="nb_annonces")
	private int nbAnnonces;
	
	public User() {
		super();
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(int contactNumber) {
		this.contactNumber = contactNumber;
	}

	public int getNbAnnonces() {
		return nbAnnonces;
	}

	public void setNbAnnonces(int nbAnnonces) {
		this.nbAnnonces = nbAnnonces;
	}
	
}
