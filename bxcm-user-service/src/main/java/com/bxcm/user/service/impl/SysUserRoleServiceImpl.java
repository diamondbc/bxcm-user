package com.bxcm.user.service.impl;

import com.bxcm.common.bean.Pagination;
import com.bxcm.user.dao.bean.SysUserRole;
import com.bxcm.user.dao.bean.SysUserRoleExample;
import com.bxcm.user.dao.mapper.SysUserRoleMapper;
import com.bxcm.user.service.SysUserRoleService;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SysUserRoleServiceImpl implements SysUserRoleService {

    @Autowired
    private SysUserRoleMapper sysUserRoleMapper;

    private static final Logger logger = LoggerFactory.getLogger(SysUserRoleServiceImpl.class);

    @Override
    public int countByExample(SysUserRoleExample example) {
        return this.sysUserRoleMapper.countByExample(example);
    }

    @Override
    public List<SysUserRole> selectByExample(SysUserRoleExample example) {
        return this.sysUserRoleMapper.selectByExample(example);
    }

    @Override
    public Pagination<SysUserRole> selectPageByExample(SysUserRoleExample example, Pagination<SysUserRole> pagination) {
        example.setLimit(pagination.getLimit());
        example.setOffset(pagination.getOffset());
        pagination.setData(selectByExample(example));
        pagination.setTotal(countByExample(example));
        return pagination;
    }

    @Override
    public SysUserRole selectByPrimaryKey(Integer id) {
        return this.sysUserRoleMapper.selectByPrimaryKey(id);
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return this.sysUserRoleMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(SysUserRole record) {
        return this.sysUserRoleMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(SysUserRole record) {
        return this.sysUserRoleMapper.updateByPrimaryKey(record);
    }

    @Override
    public int deleteByExample(SysUserRoleExample example) {
        return this.sysUserRoleMapper.deleteByExample(example);
    }

    @Override
    public int updateByExampleSelective(SysUserRole record, SysUserRoleExample example) {
        return this.sysUserRoleMapper.updateByExampleSelective(record, example);
    }

    @Override
    public int updateByExample(SysUserRole record, SysUserRoleExample example) {
        return this.sysUserRoleMapper.updateByExample(record, example);
    }

    @Override
    public void insert(SysUserRole record) {
        this.sysUserRoleMapper.insert(record);
    }

    @Override
    public void insertSelective(SysUserRole record) {
        this.sysUserRoleMapper.insertSelective(record);
    }
}