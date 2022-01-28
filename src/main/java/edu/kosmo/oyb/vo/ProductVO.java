package edu.kosmo.oyb.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/*
desc product;
이름           널?       유형             
------------ -------- -------------- 
ID           NOT NULL NUMBER         
NAME         NOT NULL VARCHAR2(100)  
CATEGORY              VARCHAR2(20)   
IMAGE                 VARCHAR2(3000) 
AMOUNT       NOT NULL NUMBER         
STOCK                 NUMBER         
COOKING_TIME          NUMBER         
SERVING               NUMBER         
STORE                 VARCHAR2(20)   
MARK                  NUMBER         
INFOMATION            VARCHAR2(3000) 
 */

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class ProductVO {
	
	private int id;
	private String name;
	private String category;
	private String image;
	private int amount;
	private int stock;
	private int cooking_time;
	private int serving;
	private String store;
	private int mark;
	private String infomation;
	
}