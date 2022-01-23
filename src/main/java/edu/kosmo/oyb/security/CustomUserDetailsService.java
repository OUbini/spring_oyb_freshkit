package edu.kosmo.oyb.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import edu.kosmo.oyb.mapper.MemberMapper;
import edu.kosmo.oyb.vo.CustomUserDetails;
import edu.kosmo.oyb.vo.MemberVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;


@Log4j
@Service
public class CustomUserDetailsService implements UserDetailsService  {
   
   @Setter(onMethod_ = @Autowired)
   private MemberMapper memberMapper;

   @Override
   public UserDetails loadUserByUsername(String id) throws UsernameNotFoundException {
      
      log.warn("Load User By Member id: " + id);   
      
      MemberVO vo = memberMapper.readMember(id);
      vo.setAuthorityList(memberMapper.readAuthority(id));
      
      log.warn("queried by MemberVO mapper: " + vo);      
          
      return vo == null ? null : new CustomUserDetails(vo);
      
   }   

}