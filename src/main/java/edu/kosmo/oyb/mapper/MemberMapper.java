package edu.kosmo.oyb.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import edu.kosmo.oyb.vo.AuthorityVO;
import edu.kosmo.oyb.vo.MemberVO;

@Mapper
public interface MemberMapper {

	@Select("select * from member where id = #{id}")
	public MemberVO readMember(String id);
	
	@Select("select id,case when id='admin' then 'ROLE_ADMIN' else 'ROLE_USER' end name from member where id = #{id}")
	public List<AuthorityVO> readAuthority(String id);
}
