package com.bxcm.user.dao.bean;

import java.util.Date;

/**
 * SysUser
 * 表名:sys_user
 * 2017-6-25 15:06:09
 */
public class SysUser {

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
     * 列名:domain_id
     * 备注:domainId
     */
    private String domainId;

    /**
     * 列名:user_name
     * 备注:用户名
     */
    private String userName;

    /**
     * 列名:user_phone
     * 备注:用户手机号
     */
    private String userPhone;

    /**
     * 列名:user_email
     * 备注:用户邮箱
     */
    private String userEmail;

    /**
     * 列名:user_type
     * 备注:用户类型(1超级管理员2普通管理员3后台商家4普通用户)
     */
    private Short userType;

    /**
     * 列名:user_password
     * 备注:用户密码
     */
    private String userPassword;

    /**
     * 列名:user_status
     * 备注:用户状态(0初始化1正常2审核中)
     */
    private Short userStatus;

    /**
     * 列名:user_remark
     * 备注:用户详情
     */
    private String userRemark;

    /**
     * 列名:is_deleted
     * 备注:是否已删除, 0:未删除, 1:已删除
     */
    private Byte isDeleted;

    /**
     * 列名:create_time
     * 备注:创建时间
     */
    private Date createTime;

    /**
     * 列名:update_time
     * 备注:更新时间
     */
    private Date updateTime;

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

    public String getDomainId() {
        return domainId;
    }

    public void setDomainId(String domainId) {
        this.domainId = domainId == null ? null : domainId.trim();
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone == null ? null : userPhone.trim();
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail == null ? null : userEmail.trim();
    }

    public Short getUserType() {
        return userType;
    }

    public void setUserType(Short userType) {
        this.userType = userType;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword == null ? null : userPassword.trim();
    }

    public Short getUserStatus() {
        return userStatus;
    }

    public void setUserStatus(Short userStatus) {
        this.userStatus = userStatus;
    }

    public String getUserRemark() {
        return userRemark;
    }

    public void setUserRemark(String userRemark) {
        this.userRemark = userRemark == null ? null : userRemark.trim();
    }

    public Byte getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(Byte isDeleted) {
        this.isDeleted = isDeleted;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}