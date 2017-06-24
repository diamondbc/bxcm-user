package com.bxcm.user.bean;

import java.util.Date;

/**
 * SysDomain
 * 表名:sys_domain
 * 2017-6-24 10:57:28
 */
public class SysDomain {

    /**
     * 列名:id
     * 备注:主键ID
     */
    private Integer id;

    /**
     * 列名:domain_id
     * 备注:domainID
     */
    private String domainId;

    /**
     * 列名:name
     * 备注:名称
     */
    private String name;

    /**
     * 列名:remark
     * 备注:描述
     */
    private String remark;

    /**
     * 列名:is_deleted
     * 备注:是否已删除, 0:未删除, 1:已删除
     */
    private Byte isDeleted;

    /**
     * 列名:created_at
     * 备注:创建时间
     */
    private Date createdAt;

    /**
     * 列名:updated_at
     * 备注:更新时间
     */
    private Date updatedAt;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDomainId() {
        return domainId;
    }

    public void setDomainId(String domainId) {
        this.domainId = domainId == null ? null : domainId.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public Byte getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(Byte isDeleted) {
        this.isDeleted = isDeleted;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Date getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }
}