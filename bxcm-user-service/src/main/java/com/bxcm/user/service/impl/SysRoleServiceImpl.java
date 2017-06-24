package com.bxcm.user.service.impl;

import com.bxcm.common.bean.Pagination;
import com.bxcm.user.bean.SysRole;
import com.bxcm.user.bean.SysRoleExample;
import com.bxcm.user.mapper.SysRoleMapper;
import com.bxcm.user.service.SysRoleService;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SysRoleServiceImpl implements SysRoleService {

    @Autowired
    private SysRoleMapper sysRoleMapper;

    private static final Logger logger = LoggerFactory.getLogger(SysRoleServiceImpl.class);

    @Override
    public int countByExample(SysRoleExample example) {
        return this.sysRoleMapper.countByExample(example);
    }

    @Override
    public List<SysRole> selectByExample(SysRoleExample example) {
        return this.sysRoleMapper.selectByExample(example);
    }

    @Override
    public Pagination<SysRole> selectPageByExample(SysRoleExample example, Pagination<SysRole> pagination) {
        example.setLimit(pagination.getLimit());
        example.setOffset(pagination.getOffset());
        pagination.setData(selectByExample(example));
        pagination.setTotal(countByExample(example));
        return pagination;
    }

    @Override
    public SysRole selectByPrimaryKey(Integer id) {
        return this.sysRoleMapper.selectByPrimaryKey(id);
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return this.sysRoleMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(SysRole record) {
        return this.sysRoleMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(SysRole record) {
        return this.sysRoleMapper.updateByPrimaryKey(record);
    }

    @Override
    public int deleteByExample(SysRoleExample example) {
        return this.sysRoleMapper.deleteByExample(example);
    }

    @Override
    public int updateByExampleSelective(SysRole record, SysRoleExample example) {
        return this.sysRoleMapper.updateByExampleSelective(record, example);
    }

    @Override
    public int updateByExample(SysRole record, SysRoleExample example) {
        return this.sysRoleMapper.updateByExample(record, example);
    }

    @Override
    public void insert(SysRole record) {
        this.sysRoleMapper.insert(record);
    }

    @Override
    public void insertSelective(SysRole record) {
        this.sysRoleMapper.insertSelective(record);
    }
}