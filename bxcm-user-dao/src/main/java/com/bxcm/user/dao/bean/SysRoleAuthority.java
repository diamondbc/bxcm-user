package com.bxcm.user.dao.bean;

import java.util.Date;

/**
 * SysRoleAuthority
 * 表名:sys_role_authority
 * 2017-6-25 15:06:09
 */
public class SysRoleAuthority {

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
     * 列名:permission_id
     * 备注:权限ID
     */
    private String permissionId;

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

    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId == null ? null : roleId.trim();
    }

    public String getPermissionId() {
        return permissionId;
    }

    public void setPermissionId(String permissionId) {
        this.permissionId = permissionId == null ? null : permissionId.trim();
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }
}