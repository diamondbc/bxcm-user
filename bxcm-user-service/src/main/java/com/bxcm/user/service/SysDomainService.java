package com.bxcm.user.service;

import com.bxcm.common.bean.Pagination;
import com.bxcm.user.dao.bean.SysDomain;
import com.bxcm.user.dao.bean.SysDomainExample;
import java.util.List;

public interface SysDomainService {
    int countByExample(SysDomainExample example);

    SysDomain selectByPrimaryKey(Integer id);

    List<SysDomain> selectByExample(SysDomainExample example);

    Pagination<SysDomain> selectPageByExample(SysDomainExample example, Pagination<SysDomain> pagination);

    int deleteByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SysDomain record);

    int updateByPrimaryKey(SysDomain record);

    int deleteByExample(SysDomainExample example);

    int updateByExampleSelective(SysDomain record, SysDomainExample example);

    int updateByExample(SysDomain record, SysDomainExample example);

    void insert(SysDomain record);

    void insertSelective(SysDomain record);
}