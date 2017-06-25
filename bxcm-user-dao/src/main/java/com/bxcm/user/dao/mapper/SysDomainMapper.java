package com.bxcm.user.dao.mapper;

import com.bxcm.user.dao.bean.SysDomain;
import com.bxcm.user.dao.bean.SysDomainExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SysDomainMapper {
    int countByExample(SysDomainExample example);

    int deleteByExample(SysDomainExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(SysDomain record);

    int insertSelective(SysDomain record);

    List<SysDomain> selectByExample(SysDomainExample example);

    SysDomain selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") SysDomain record, @Param("example") SysDomainExample example);

    int updateByExample(@Param("record") SysDomain record, @Param("example") SysDomainExample example);

    int updateByPrimaryKeySelective(SysDomain record);

    int updateByPrimaryKey(SysDomain record);
}