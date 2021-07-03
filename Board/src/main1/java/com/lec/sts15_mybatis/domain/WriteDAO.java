package com.lec.sts15_mybatis.domain;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;

@MapperScan
public interface WriteDAO {
	List<WriteDTO> select();
	int insert(WriteDTO dto);
	int insert(String subject, String content, String name);
//	List<WriteDTO> readByUid(int uid);
	List<WriteDTO> selectByUid(int uid);
	int update(WriteDTO dto);
	int update(int uid, @Param("a")WriteDTO dto);
	int deleteByUid(int uid);
	
	int incViewCnt(int uid);
}