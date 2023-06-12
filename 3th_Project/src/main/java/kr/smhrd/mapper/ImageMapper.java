package kr.smhrd.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.domain.T_IMAGE;

@Mapper
public interface ImageMapper {
	
	void insertImage(T_IMAGE image);
	void saveImage(T_IMAGE image);
	
}
