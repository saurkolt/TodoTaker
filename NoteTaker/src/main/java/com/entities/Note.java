package com.entities;

import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "notes")
public class Note {
	@Id
	@Column(name = "Id")
	private int id;
	@Column(name = "Titles")
	private String titile;
	@Column(name = "Contents")
	private String content;

	@Temporal(TemporalType.DATE)
	@Column(name = "Added_Date")
	private Date addDate;

	public Note() {
		super();
	}

	public Note(String titile, String content, Date addDate) {
		super();
		this.id = new Random().nextInt(10000);
		this.titile = titile;
		this.content = content;
		this.addDate = addDate;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitile() {
		return titile;
	}

	public void setTitile(String titile) {
		this.titile = titile;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getAddDate() {
		return addDate;
	}

	public void setAddDate(Date addDate) {
		this.addDate = addDate;
	}

	@Override
	public String toString() {
		return "Note [id=" + id + ", titile=" + titile + ", content=" + content + ", addDate=" + addDate + "]";
	}

}
