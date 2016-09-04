package com.cl.ecps.common.entity;

public class SysUser extends BaseEntity {
	private static final long serialVersionUID = 1L;

	private Integer id;

	private String name;

	private String loginname;

	private String password;

	private Integer number;

	private Integer status;

	private Integer sysdepcode;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name == null ? null : name.trim();
	}

	public String getLoginname() {
		return loginname;
	}

	public void setLoginname(String loginname) {
		this.loginname = loginname == null ? null : loginname.trim();
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password == null ? null : password.trim();
	}

	public Integer getNumber() {
		return number;
	}

	public void setNumber(Integer number) {
		this.number = number;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getSysdepcode() {
		return sysdepcode;
	}

	public void setSysdepcode(Integer sysdepcode) {
		this.sysdepcode = sysdepcode;
	}

}