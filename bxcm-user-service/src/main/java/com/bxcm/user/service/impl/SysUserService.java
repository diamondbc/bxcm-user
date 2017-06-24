package com.bxcm.user.service.impl;

import com.bxcm.common.bean.Pagination;
import com.bxcm.user.bean.SysUser;
import com.bxcm.user.bean.SysUserExample;
import com.bxcm.user.mapper.SysUserMapper;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SysUserService {

    @Autowired
    private SysUserMapper sysUserMapper;

    private static final Logger logger = LoggerFactory.getLogger(SysUserService.class);

    public int countByExample(SysUserExample example) {
        return this.sysUserMapper.countByExample(example);
    }

    public List<SysUser> selectByExample(SysUserExample example) {
        return this.sysUserMapper.selectByExample(example);
    }

    public Pagination<SysUser> selectPageByExample(SysUserExample example, Pagination<SysUser> pagination) {
        example.setLimit(pagination.getLimit());
        example.setOffset(pagination.getOffset());
        pagination.setData(selectByExample(example));
        pagination.setTotal(countByExample(example));
        return pagination;
    }

    public SysUser selectByPrimaryKey(Integer id) {
        return this.sysUserMapper.selectByPrimaryKey(id);
    }

    public int deleteByPrimaryKey(Integer id) {
        return this.sysUserMapper.deleteByPrimaryKey(id);
    }

    public int updateByPrimaryKeySelective(SysUser record) {
        return this.sysUserMapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(SysUser record) {
        return this.sysUserMapper.updateByPrimaryKey(record);
    }

    public int deleteByExample(SysUserExample example) {
        return this.sysUserMapper.deleteByExample(example);
    }

    public int updateByExampleSelective(SysUser record, SysUserExample example) {
        return this.sysUserMapper.updateByExampleSelective(record, example);
    }

    public int updateByExample(SysUser record, SysUserExample example) {
        return this.sysUserMapper.updateByExample(record, example);
    }

    public void insert(SysUser record) {
        this.sysUserMapper.insert(record);
    }

    public void insertSelective(SysUser record) {
        this.sysUserMapper.insertSelective(record);
    }
}