package com.bxcm.user.service.impl;

import com.bxcm.common.bean.Pagination;
import com.bxcm.user.bean.SysRoleAuthority;
import com.bxcm.user.bean.SysRoleAuthorityExample;
import com.bxcm.user.mapper.SysRoleAuthorityMapper;
import com.bxcm.user.service.SysRoleAuthorityService;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SysRoleAuthorityServiceImpl implements SysRoleAuthorityService {

    @Autowired
    private SysRoleAuthorityMapper sysRoleAuthorityMapper;

    private static final Logger logger = LoggerFactory.getLogger(SysRoleAuthorityServiceImpl.class);

    @Override
    public int countByExample(SysRoleAuthorityExample example) {
        return this.sysRoleAuthorityMapper.countByExample(example);
    }

    @Override
    public List<SysRoleAuthority> selectByExample(SysRoleAuthorityExample example) {
        return this.sysRoleAuthorityMapper.selectByExample(example);
    }

    @Override
    public Pagination<SysRoleAuthority> selectPageByExample(SysRoleAuthorityExample example, Pagination<SysRoleAuthority> pagination) {
        example.setLimit(pagination.getLimit());
        example.setOffset(pagination.getOffset());
        pagination.setData(selectByExample(example));
        pagination.setTotal(countByExample(example));
        return pagination;
    }

    @Override
    public SysRoleAuthority selectByPrimaryKey(Integer id) {
        return this.sysRoleAuthorityMapper.selectByPrimaryKey(id);
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return this.sysRoleAuthorityMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(SysRoleAuthority record) {
        return this.sysRoleAuthorityMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(SysRoleAuthority record) {
        return this.sysRoleAuthorityMapper.updateByPrimaryKey(record);
    }

    @Override
    public int deleteByExample(SysRoleAuthorityExample example) {
        return this.sysRoleAuthorityMapper.deleteByExample(example);
    }

    @Override
    public int updateByExampleSelective(SysRoleAuthority record, SysRoleAuthorityExample example) {
        return this.sysRoleAuthorityMapper.updateByExampleSelective(record, example);
    }

    @Override
    public int updateByExample(SysRoleAuthority record, SysRoleAuthorityExample example) {
        return this.sysRoleAuthorityMapper.updateByExample(record, example);
    }

    @Override
    public void insert(SysRoleAuthority record) {
        this.sysRoleAuthorityMapper.insert(record);
    }

    @Override
    public void insertSelective(SysRoleAuthority record) {
        this.sysRoleAuthorityMapper.insertSelective(record);
    }
}