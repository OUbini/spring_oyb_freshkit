package edu.kosmo.oyb.vo;


import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.kosmo.oyb.mapper.MemberMapper;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Getter
@Setter
public class CustomUserDetails implements UserDetails {
	
	
	//=================================================================================================
	@Setter(onMethod_ = @Autowired)
	private MemberVO member;
	
	// ================================================================================================
	private String password;
	private final String username;
	private final Collection<? extends GrantedAuthority> authorities;
	private final boolean accountNonExpired;
	private final boolean accountNonLocked;
	private final boolean credentialsNonExpired;
	private final boolean enabled;

	// ~ Constructors
	// ===================================================================================================
	
	public CustomUserDetails(MemberVO memberVO) {
		
		this(memberVO.getId() ,memberVO.getPw(),true, true, true, true, getAuth(memberVO));
		this.member = memberVO;	
	}
	
	public CustomUserDetails(String id, String pw, boolean enabled,
			boolean accountNonExpired, boolean credentialsNonExpired,
			boolean accountNonLocked, Collection<? extends GrantedAuthority> authorities) {
		/*
		 *왜인지 id를 unread로 인식하여 아래의 조건문때문에 로그인을 하지 못했음. 이유찾기
		if (((id == null) || "".equals(id)) || (password == null)) {
			throw new IllegalArgumentException(
					"Cannot pass null or empty values to constructor");
		}
		*/

		this.username = id;
		this.password = pw;
		this.enabled = enabled;
		this.accountNonExpired = accountNonExpired;
		this.credentialsNonExpired = credentialsNonExpired;
		this.accountNonLocked = accountNonLocked;
		this.authorities = authorities;
	}
	
	//유저가 갖고 있는 권한 목록
	public static Collection<? extends GrantedAuthority> getAuth(MemberVO memberVO) { 
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		for (AuthorityVO auth: memberVO.getAuthorityList()) {
			authorities.add(new SimpleGrantedAuthority(auth.getName()));
		}
		return authorities;
	}
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		return authorities;
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return password;
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return username;
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return accountNonExpired;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return accountNonLocked;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return credentialsNonExpired;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return enabled;
	}
	

}