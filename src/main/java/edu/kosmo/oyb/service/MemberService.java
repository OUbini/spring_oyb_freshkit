package edu.kosmo.oyb.service;

import edu.kosmo.oyb.vo.MemberVO;

public interface MemberService {
	
	public MemberVO getMember(String id); //회원정보가져오기
	public void addMember(MemberVO memberVO); //회원가입
}
