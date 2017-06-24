package com.bxcm.user.bean;

import java.util.Date;

/**
 * SysRole
 * 表名:sys_role
 * 2017-6-24 10:57:28
 */
public class SysRole {

    /**
     * 列名:id
     * 备注:主键ID
     */
    private Integer id;

    /**
     * 列名:role_id
     * 备注:角色ID
     */
    private String roleId;

    /**
     * 列名:domain_id
     * 备注:DomainID
     */
    private String domainId;

    /**
     * 列名:role_name
     * 备注:角色名称
     */
    private String roleName;

    /**
     * 列名:role_remark
     * 备注:角色描述
     */
    private String roleRemark;

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

    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId == null ? null : roleId.trim();
    }

    public String getDomainId() {
        return domainId;
    }

    public void setDomainId(String domainId) {
        this.domainId = domainId == null ? null : domainId.trim();
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName == null ? null : roleName.trim();
    }

    public String getRoleRemark() {
        return roleRemark;
    }

    public void setRoleRemark(String roleRemark) {
        this.roleRemark = roleRemark == null ? null : roleRemark.trim();
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