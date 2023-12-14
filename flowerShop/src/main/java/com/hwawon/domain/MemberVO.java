package com.hwawon.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class MemberVO {

//	userNum int not null primary key auto_increment,
//	userId	varchar(60) not null,
//	userNick	varchar(30) not null,
//	gradeCode	int default 0,
//	userName varchar(50) not null,
//	pwd	varchar(100) not null,
//	email varchar(50) not null,
//	phone char(20) not null,
//	postCode int not null,
//	address	varchar(50) not null,
//	regiNum_1 int not null,
//	reguNum_2 int not null,
//	admin	int default 0,
//	unique key(userId)

	public String userId, userNick, userName, pwd , email, phone, address;
	public int userNum, gradeCode, postCode, regiNum_1, regiNum_2, admin;
	
}
