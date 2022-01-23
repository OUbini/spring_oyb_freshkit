package edu.kosmo.oyb.service;

import org.springframework.stereotype.Service;

import edu.kosmo.oyb.mapper.MemberMapper;
import edu.kosmo.oyb.vo.MemberVO;
import lombok.extern.log4j.Log4j;


@Log4j
@Service
public class MemberServiceImpl implements MemberService {
	
	private MemberMapper memberMapper;
	
	public MemberVO getMember(String id) {
		log.info("readMember..");
		
		MemberVO memberVO = memberMapper.readMember(id);
		memberVO.setAuthorityList(memberMapper.readAuthority(id));
		
		return memberVO;
	}
	
}
