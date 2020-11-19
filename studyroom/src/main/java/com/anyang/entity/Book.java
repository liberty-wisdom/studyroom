package com.anyang.entity;

import java.util.Date;

public class Book {
    private Integer id;
    private String bookname;
    private double price;
    private Integer booknum;
    private String publisher;
    private String author;
    private String translator;
    private Date publicationtime;
    private String type;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBookname() {
        return bookname;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Integer getBooknum() {
        return booknum;
    }

    public void setBooknum(Integer booknum) {
        this.booknum = booknum;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getTranslator() {
        return translator;
    }

    public void setTranslator(String translator) {
        this.translator = translator;
    }

    public Date getPublicationtime() {
        return publicationtime;
    }

    public void setPublicationtime(Date publicationtime) {
        this.publicationtime = publicationtime;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", bookname='" + bookname + '\'' +
                ", price=" + price +
                ", booknum=" + booknum +
                ", publisher='" + publisher + '\'' +
                ", author='" + author + '\'' +
                ", translator='" + translator + '\'' +
                ", publicationtime=" + publicationtime +
                ", type='" + type + '\'' +
                '}';
    }
}
