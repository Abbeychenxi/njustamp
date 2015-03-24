package nju.software.vo;

/**
 * @author 作者: fan
 * @version 创建时间：2015-3-18 下午6:54:35 类说明
 */
public class StampVO {

	private int id;
	private int collar_id;
	private String name;
	private String money;
	private String number;
	private String pic;
	private String price;
	private String old_price;
	private String publish_time;
	private String color;
	private String country;
	private byte[] binary_pic;
	private String url;
	

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCollar_id() {
		return collar_id;
	}

	public void setCollar_id(int collar_id) {
		this.collar_id = collar_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMoney() {
		return money;
	}

	public void setMoney(String money) {
		this.money = money;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getOld_price() {
		return old_price;
	}

	public void setOld_price(String old_price) {
		this.old_price = old_price;
	}

	public String getPublish_time() {
		return publish_time;
	}

	public void setPublish_time(String publish_time) {
		this.publish_time = publish_time;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public byte[] getBinary_pic() {
		return binary_pic;
	}

	public void setBinary_pic(byte[] binary_pic) {
		this.binary_pic = binary_pic;
	}

}
