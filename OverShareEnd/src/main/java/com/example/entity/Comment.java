package com.example.entity;

import java.util.List;

/**
 * 功能：评论实体类
 * 日期：2024/2/23 22:16
 */

public class Comment {

    /** ID */
    private Integer id;
    /** 内容 */
    private String content;
    /** 评论人ID */
    private Integer userId;
    /** 评论人 */
    private String userName;
    /** 父级ID */
    private Integer pid;
    /** 根节点ID */
    private Integer rootId;
    /** 评论时间 */
    private String time;
    /** 头像 */
    private String avatar;
    /** 回复人 */
    private String replyName;

    /** 帖子ID */
    private Integer fid;

    private String module;

    public String getReplyName() {
        return replyName;
    }

    public void setReplyName(String replyName) {
        this.replyName = replyName;
    }

    private List<Comment> childrenCommentList;

    public List<Comment> getChildrenCommentList() {
        return childrenCommentList;
    }

    public void setChildrenCommentList(List<Comment> childrenCommentList) {
        this.childrenCommentList = childrenCommentList;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public Integer getRootId() {
        return rootId;
    }

    public void setRootId(Integer rootId) {
        this.rootId = rootId;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public Integer getFid() {
        return fid;
    }

    public void setFid(Integer fid) {
        this.fid = fid;
    }

    public String getModule() {
        return module;
    }

    public void setModule(String module) {
        this.module = module;
    }
}
