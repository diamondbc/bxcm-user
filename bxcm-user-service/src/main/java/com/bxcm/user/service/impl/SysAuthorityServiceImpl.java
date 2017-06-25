package com.bxcm.user.service.impl;

import com.bxcm.common.bean.Pagination;
import com.bxcm.user.dao.bean.SysAuthority;
import com.bxcm.user.dao.bean.SysAuthorityExample;
import com.bxcm.user.dao.mapper.SysAuthorityMapper;
import com.bxcm.user.service.SysAuthorityService;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SysAuthorityServiceImpl implements SysAuthorityService {

    @Autowired
    private SysAuthorityMapper sysAuthorityMapper;

    private static final Logger logger = LoggerFactory.getLogger(SysAuthorityServiceImpl.class);

    @Override
    public int countByExample(SysAuthorityExample example) {
        return this.sysAuthorityMapper.countByExample(example);
    }

    @Override
    public List<SysAuthority> selectByExample(SysAuthorityExample example) {
        return this.sysAuthorityMapper.selectByExample(example);
    }

    @Override
    public Pagination<SysAuthority> selectPageByExample(SysAuthorityExample example, Pagination<SysAuthority> pagination) {
        example.setLimit(pagination.getLimit());
        example.setOffset(pagination.getOffset());
        pagination.setData(selectByExample(example));
        pagination.setTotal(countByExample(example));
        return pagination;
    }

    @Override
    public SysAuthority selectByPrimaryKey(Integer id) {
        return this.sysAuthorityMapper.selectByPrimaryKey(id);
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return this.sysAuthorityMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(SysAuthority record) {
        return this.sysAuthorityMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(SysAuthority record) {
        return this.sysAuthorityMapper.updateByPrimaryKey(record);
    }

    @Override
    public int deleteByExample(SysAuthorityExample example) {
        return this.sysAuthorityMapper.deleteByExample(example);
    }

    @Override
    public int updateByExampleSelective(SysAuthority record, SysAuthorityExample example) {
        return this.sysAuthorityMapper.updateByExampleSelective(record, example);
    }

    @Override
    public int updateByExample(SysAuthority record, SysAuthorityExample example) {
        return this.sysAuthorityMapper.updateByExample(record, example);
    }

    @Override
    public void insert(SysAuthority record) {
        this.sysAuthorityMapper.insert(record);
    }

    @Override
    public void insertSelective(SysAuthority record) {
        this.sysAuthorityMapper.insertSelective(record);
    }
}