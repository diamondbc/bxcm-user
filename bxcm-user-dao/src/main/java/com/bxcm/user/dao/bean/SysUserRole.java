package com.bxcm.user.dao.bean;

import java.util.Date;

/**
 * SysUserRole
 * 表名:sys_user_role
 * 2017-6-25 15:06:09
 */
public class SysUserRole {

    /**
     * 列名:id
     * 备注:主键ID
     */
    private Integer id;

    /**
     * 列名:user_id
     * 备注:用户ID
     */
    private String userId;

    /**
     * 列名:role_id
     * 备注:角色ID
     */
    private String roleId;

    /**
     * 列名:created_at
     * 备注:创建时间
     */
    private Date createdAt;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId == null ? null : roleId.trim();
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }
}