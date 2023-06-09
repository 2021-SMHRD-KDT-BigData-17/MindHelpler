package kr.smhrd.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.domain.T_COUNSELOR;

@Mapper
public interface CounselorMapper {
	
	public T_COUNSELOR counselorLogin(T_COUNSELOR coun);
	public void insertCounselor(T_COUNSELOR coun);
	public T_COUNSELOR updateCounselor(T_COUNSELOR coun);
	
}
