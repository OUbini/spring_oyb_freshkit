package edu.kosmo.oyb.vo;


import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/*
desc board;
이름           널?       유형            
------------ -------- ------------- 
ID           NOT NULL NUMBER        
TITLE                 VARCHAR2(100) 
CATEGORY              VARCHAR2(20)  
CONTENT               VARCHAR2(500) 
BDATE                 DATE          
HIT                   NUMBER        
BGROUP                NUMBER        
BINDENT               NUMBER        
BSTEP                 NUMBER        
BOARDTYPE_ID          NUMBER        
MEMBER_ID             VARCHAR2(50)  
PRODUCT_ID            NUMBER    
 */

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class BoardVO {
	
	private int id;
	private String title;
	private String category;
	private String content;
	private Timestamp bdate;
	private int hit;
	private int bgroup;
	private int bindent;
	private int bstep;
	private int boardtype_id;
	private String member_id;
	private int product_id;
	
}
