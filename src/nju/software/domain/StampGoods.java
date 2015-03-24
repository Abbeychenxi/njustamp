package nju.software.domain;

import java.util.List;

public class StampGoods {

	private int id;
	private String name;
	private int price;
	private String descrip;
	private String stamp_item_crawl_date;
	private String link;
	private List<StampPic> pics;
	public StampGoods() {
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getDescrip() {
		return descrip;
	}
	public void setDescrip(String descrip) {
		this.descrip = descrip;
	}
	public String getStamp_item_crawl_date() {
		return stamp_item_crawl_date;
	}
	public void setStamp_item_crawl_date(String stamp_item_crawl_date) {
		this.stamp_item_crawl_date = stamp_item_crawl_date;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public List<StampPic> getPics() {
		return pics;
	}
	public void setPics(List<StampPic> pics) {
		this.pics = pics;
	}
	
}
