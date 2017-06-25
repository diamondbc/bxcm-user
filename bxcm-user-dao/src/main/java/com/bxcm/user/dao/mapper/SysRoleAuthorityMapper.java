package com.bxcm.user.dao.mapper;

import com.bxcm.user.dao.bean.SysRoleAuthority;
import com.bxcm.user.dao.bean.SysRoleAuthorityExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SysRoleAuthorityMapper {
    int countByExample(SysRoleAuthorityExample example);

    int deleteByExample(SysRoleAuthorityExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(SysRoleAuthority record);

    int insertSelective(SysRoleAuthority record);

    List<SysRoleAuthority> selectByExample(SysRoleAuthorityExample example);

    SysRoleAuthority selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") SysRoleAuthority record, @Param("example") SysRoleAuthorityExample example);

    int updateByExample(@Param("record") SysRoleAuthority record, @Param("example") SysRoleAuthorityExample example);

    int updateByPrimaryKeySelective(SysRoleAuthority record);

    int updateByPrimaryKey(SysRoleAuthority record);
}