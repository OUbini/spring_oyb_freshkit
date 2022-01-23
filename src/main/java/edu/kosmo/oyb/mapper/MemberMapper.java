package edu.kosmo.oyb.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import edu.kosmo.oyb.vo.AuthorityVO;
import edu.kosmo.oyb.vo.MemberVO;

@Mapper
public interface MemberMapper {

	
	public MemberVO readMember(String id);
	
	@Select("select id,case when id='admin' then 'ROLE_ADMIN' else 'ROLE_USER' end name from member where id = #{id}")
	public List<AuthorityVO> readAuthority(String id);
	
	@Insert("insert into member(id,pw,rank,name,postnum,address,phone,birth,gender,point) values(#{id},#{pw},1,#{name},#{postnum),#{address},#{phone},#{birth},#{gender},0")
	public int insertMember(MemberVO memberVO);

	@Insert("insert into Authority (name,member_id) values('ROLE_USER',#{id})")
	public void insertAuthority(MemberVO memberVO);	
}
