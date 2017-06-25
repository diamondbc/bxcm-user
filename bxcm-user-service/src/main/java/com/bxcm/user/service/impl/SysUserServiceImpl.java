package com.bxcm.user.service.impl;

import com.bxcm.common.bean.Pagination;
import com.bxcm.user.dao.bean.SysUser;
import com.bxcm.user.dao.bean.SysUserExample;
import com.bxcm.user.dao.mapper.SysUserMapper;
import com.bxcm.user.service.SysUserService;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SysUserServiceImpl implements SysUserService {

    @Autowired
    private SysUserMapper sysUserMapper;

    private static final Logger logger = LoggerFactory.getLogger(SysUserServiceImpl.class);

    @Override
    public int countByExample(SysUserExample example) {
        return this.sysUserMapper.countByExample(example);
    }

    @Override
    public List<SysUser> selectByExample(SysUserExample example) {
        return this.sysUserMapper.selectByExample(example);
    }

    @Override
    public Pagination<SysUser> selectPageByExample(SysUserExample example, Pagination<SysUser> pagination) {
        example.setLimit(pagination.getLimit());
        example.setOffset(pagination.getOffset());
        pagination.setData(selectByExample(example));
        pagination.setTotal(countByExample(example));
        return pagination;
    }

    @Override
    public SysUser selectByPrimaryKey(Integer id) {
        return this.sysUserMapper.selectByPrimaryKey(id);
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return this.sysUserMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(SysUser record) {
        return this.sysUserMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(SysUser record) {
        return this.sysUserMapper.updateByPrimaryKey(record);
    }

    @Override
    public int deleteByExample(SysUserExample example) {
        return this.sysUserMapper.deleteByExample(example);
    }

    @Override
    public int updateByExampleSelective(SysUser record, SysUserExample example) {
        return this.sysUserMapper.updateByExampleSelective(record, example);
    }

    @Override
    public int updateByExample(SysUser record, SysUserExample example) {
        return this.sysUserMapper.updateByExample(record, example);
    }

    @Override
    public void insert(SysUser record) {
        this.sysUserMapper.insert(record);
    }

    @Override
    public void insertSelective(SysUser record) {
        this.sysUserMapper.insertSelective(record);
    }
}