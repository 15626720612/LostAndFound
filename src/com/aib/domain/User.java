package com.aib.domain;

/**
 * username:账号 password:密码 phone：手机号码 uname:名字 sex:性别 id_number:身份证号 address：地址
 *  code_address：邮政地址 password_prompt：密码提示 Prompt_answer：提示答案
 * 
 * @author 小宇
 * 
 */
public class User {
	private Long id;
	private String username;
	private String password;
	private String phone;
	private String uname;
	private String sex;
	private String id_number;
	private String code_address;
	private String password_prompt;
	private String prompt_answer;
	private String address;
	
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password="
				+ password + ", phone=" + phone + ", uname=" + uname + ", sex="
				+ sex + ", id_number=" + id_number + ", code_address="
				+ code_address + ", password_prompt=" + password_prompt
				+ ", prompt_answer=" + prompt_answer + ", address=" + address
				+ "]";
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getId_number() {
		return id_number;
	}
	public void setId_number(String id_number) {
		this.id_number = id_number;
	}
	public String getCode_address() {
		return code_address;
	}
	public void setCode_address(String code_address) {
		this.code_address = code_address;
	}
	public String getPassword_prompt() {
		return password_prompt;
	}
	public void setPassword_prompt(String password_prompt) {
		this.password_prompt = password_prompt;
	}
	public String getPrompt_answer() {
		return prompt_answer;
	}
	public void setPrompt_answer(String prompt_answer) {
		this.prompt_answer = prompt_answer;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}

	
	
}
