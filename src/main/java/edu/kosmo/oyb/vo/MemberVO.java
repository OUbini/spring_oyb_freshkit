package edu.kosmo.oyb.vo;

import java.sql.Timestamp;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/*
desc member;
이름      널?       유형            
------- -------- ------------- 
ID      NOT NULL VARCHAR2(50)  
PW      NOT NULL VARCHAR2(500) 
RANK    NOT NULL NUMBER        
NAME    NOT NULL VARCHAR2(20)  
POSTNUM          NUMBER        
ADDRESS          VARCHAR2(500) 
PHONE            VARCHAR2(50)  
BIRTH            DATE          
GENDER  NOT NULL VARCHAR2(10)  
POINT            NUMBER   
 */

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class MemberVO {
	
	private String id;
	private String pw;
	private int rank;
	private String name;
	private int postnum;
	private String address;
	private String phone;
	private Timestamp birth;
	private String gender;
	private int point;
	
	private String birth2;
	
	private List<AuthorityVO> authorityList;
	
}
