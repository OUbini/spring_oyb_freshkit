package edu.kosmo.oyb.service;

import javax.inject.Inject;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.kosmo.oyb.mapper.MemberMapper;
import edu.kosmo.oyb.vo.MemberVO;
import lombok.extern.log4j.Log4j;


@Log4j
@Service
public class MemberServiceImpl implements MemberService {
	
	@Inject
	private BCryptPasswordEncoder passwordEncoder;
	
	@Inject
	private MemberMapper memberMapper;
	
	@Override
	public MemberVO getMember(String id) {
		log.info("readMember..");
		
		
		System.out.println("id : " + id );
		MemberVO memberVO = memberMapper.readMember(id);
		memberVO.setAuthorityList(memberMapper.readAuthority(id));
		log.info(memberVO);
		
		return memberVO;
	}
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public void addMember(MemberVO memberVO) { //암호화 메소드
		
		
		String pw = memberVO.getPw();
		String encode = passwordEncoder.encode(pw);
				
		memberVO.setPw(encode);

		memberMapper.insertMember(memberVO);
		memberMapper.insertAuthority(memberVO);		
	}
	
}