package com.bxcm.user.bean;

import java.util.Date;

/**
 * SysAuthority
 * 表名:sys_authority
 * 2017-6-24 10:57:28
 */
public class SysAuthority {

    /**
     * 列名:id
     * 备注:主键ID
     */
    private Integer id;

    /**
     * 列名:auth_id
     * 备注:权限ID
     */
    private String authId;

    /**
     * 列名:domain_id
     * 备注:domainId
     */
    private String domainId;

    /**
     * 列名:parent
     * 备注:父权限ID
     */
    private String parent;

    /**
     * 列名:name
     * 备注:权限名称
     */
    private String name;

    /**
     * 列名:remark
     * 备注:权限描述
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

    public String getAuthId() {
        return authId;
    }

    public void setAuthId(String authId) {
        this.authId = authId == null ? null : authId.trim();
    }

    public String getDomainId() {
        return domainId;
    }

    public void setDomainId(String domainId) {
        this.domainId = domainId == null ? null : domainId.trim();
    }

    public String getParent() {
        return parent;
    }

    public void setParent(String parent) {
        this.parent = parent == null ? null : parent.trim();
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