package com.codet.user.pojo;

import java.util.Date;

public class Custom {
    private String customid;

    private Integer levelid;

    private Integer cityid;

    private Integer relativesid;

    private String customname;

    private String name;

    private String phone;

    private String sex;

    private Date birthday;

    private String address;

    private String pic;

    private String wechat;

    private Integer integral;

    private String password;

    public String getCustomid() {
        return customid;
    }

    public void setCustomid(String customid) {
        this.customid = customid == null ? null : customid.trim();
    }

    public Integer getLevelid() {
        return levelid;
    }

    public void setLevelid(Integer levelid) {
        this.levelid = levelid;
    }

    public Integer getCityid() {
        return cityid;
    }

    public void setCityid(Integer cityid) {
        this.cityid = cityid;
    }

    public Integer getRelativesid() {
        return relativesid;
    }

    public void setRelativesid(Integer relativesid) {
        this.relativesid = relativesid;
    }

    public String getCustomname() {
        return customname;
    }

    public void setCustomname(String customname) {
        this.customname = customname == null ? null : customname.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic == null ? null : pic.trim();
    }

    public String getWechat() {
        return wechat;
    }

    public void setWechat(String wechat) {
        this.wechat = wechat == null ? null : wechat.trim();
    }

    public Integer getIntegral() {
        return integral;
    }

    public void setIntegral(Integer integral) {
        this.integral = integral;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

	@Override
	public String toString() {
		return "Custom [customid=" + customid + ", levelid=" + levelid
				+ ", cityid=" + cityid + ", relativesid=" + relativesid
				+ ", customname=" + customname + ", name=" + name + ", phone="
				+ phone + ", sex=" + sex + ", birthday=" + birthday
				+ ", address=" + address + ", pic=" + pic + ", wechat="
				+ wechat + ", integral=" + integral + ", password=" + password
				+ "]";
	}
    
}