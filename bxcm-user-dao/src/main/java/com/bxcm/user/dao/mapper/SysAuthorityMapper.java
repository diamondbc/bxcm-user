package com.bxcm.user.dao.mapper;

import com.bxcm.user.dao.bean.SysAuthority;
import com.bxcm.user.dao.bean.SysAuthorityExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SysAuthorityMapper {
    int countByExample(SysAuthorityExample example);

    int deleteByExample(SysAuthorityExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(SysAuthority record);

    int insertSelective(SysAuthority record);

    List<SysAuthority> selectByExample(SysAuthorityExample example);

    SysAuthority selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") SysAuthority record, @Param("example") SysAuthorityExample example);

    int updateByExample(@Param("record") SysAuthority record, @Param("example") SysAuthorityExample example);

    int updateByPrimaryKeySelective(SysAuthority record);

    int updateByPrimaryKey(SysAuthority record);
}