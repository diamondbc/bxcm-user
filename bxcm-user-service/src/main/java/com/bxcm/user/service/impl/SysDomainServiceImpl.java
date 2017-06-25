package com.bxcm.user.service.impl;

import com.bxcm.common.bean.Pagination;
import com.bxcm.user.dao.bean.SysDomain;
import com.bxcm.user.dao.bean.SysDomainExample;
import com.bxcm.user.dao.mapper.SysDomainMapper;
import com.bxcm.user.service.SysDomainService;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SysDomainServiceImpl implements SysDomainService {

    @Autowired
    private SysDomainMapper sysDomainMapper;

    private static final Logger logger = LoggerFactory.getLogger(SysDomainServiceImpl.class);

    @Override
    public int countByExample(SysDomainExample example) {
        return this.sysDomainMapper.countByExample(example);
    }

    @Override
    public List<SysDomain> selectByExample(SysDomainExample example) {
        return this.sysDomainMapper.selectByExample(example);
    }

    @Override
    public Pagination<SysDomain> selectPageByExample(SysDomainExample example, Pagination<SysDomain> pagination) {
        example.setLimit(pagination.getLimit());
        example.setOffset(pagination.getOffset());
        pagination.setData(selectByExample(example));
        pagination.setTotal(countByExample(example));
        return pagination;
    }

    @Override
    public SysDomain selectByPrimaryKey(Integer id) {
        return this.sysDomainMapper.selectByPrimaryKey(id);
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return this.sysDomainMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(SysDomain record) {
        return this.sysDomainMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(SysDomain record) {
        return this.sysDomainMapper.updateByPrimaryKey(record);
    }

    @Override
    public int deleteByExample(SysDomainExample example) {
        return this.sysDomainMapper.deleteByExample(example);
    }

    @Override
    public int updateByExampleSelective(SysDomain record, SysDomainExample example) {
        return this.sysDomainMapper.updateByExampleSelective(record, example);
    }

    @Override
    public int updateByExample(SysDomain record, SysDomainExample example) {
        return this.sysDomainMapper.updateByExample(record, example);
    }

    @Override
    public void insert(SysDomain record) {
        this.sysDomainMapper.insert(record);
    }

    @Override
    public void insertSelective(SysDomain record) {
        this.sysDomainMapper.insertSelective(record);
    }
}