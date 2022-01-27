package edu.kosmo.oyb.page;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
public class Criteria {
	
	private int pageNum; //페이지번호
	private int amount; //한 페이지 당 몇개의 데이터를 보여줄 것인지
	
	public Criteria() {
		this(1,10); //기본값 10개로 지정(default)
	}
	
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
}
