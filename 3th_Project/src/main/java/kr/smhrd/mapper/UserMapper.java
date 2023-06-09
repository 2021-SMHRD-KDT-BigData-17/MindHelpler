package kr.smhrd.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.domain.T_USER;

@Mapper
public interface UserMapper {
	
	public T_USER userLogin(T_USER user);
	public void insertUser(T_USER user);
	public void updateUser(T_USER user);
	public void deleteUser(String user);
}
