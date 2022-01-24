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
	private BCryptPasswordEncoder passEncoder;
	
	@Inject
	private MemberMapper memberMapper;
	
	@Override
	public MemberVO getMember(String id) {
		log.info("readMember..");
		
		
		System.out.println("선생님이 여기에 값 가져오는지 확인해보라하심 id : " + id );
		MemberVO memberVO = memberMapper.readMember(id);
		memberVO.setAuthorityList(memberMapper.readAuthority(id));
		log.info(memberVO);
		
		return memberVO;
	}
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public void addMember(MemberVO memberVO) { //암호화 메소드
		log.info("addMember..");
		log.info(memberVO);
		
		String pw = memberVO.getPw();
				
		String encode = passEncoder.encode(pw);
				
		memberVO.setPw(encode);
		memberMapper.insertMember(memberVO);
		memberMapper.insertAuthority(memberVO);		
	}
	
}