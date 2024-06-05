package com.User;



public class Post {
private int id;
private String title;
private String content;

private User user;

public Post()
{
	
}

public Post(int id, String title, String content,  User user) {
	super();
	this.id = id;
	this.title = title;
	this.content = content;
	
	this.user = user;
}

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getTitle() {
	return title;
}

public void setTitle(String title) {
	this.title = title;
}

public String getContent() {
	return content;
}

public void setContent(String content) {
	this.content = content;
}





public User getUser() {
	return user;
}

public void setUser(User user) {
	this.user = user;
}

@Override
public String toString() {
	return "Post [id=" + id + ", title=" + title + ", content=" + content + ",  user=" + user + "]";
}


}
