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

	public String userId, userNick, userName, pwd, email, phone, address, ssn;
	public int userNum, gradeCode, postCode, admin;
}
