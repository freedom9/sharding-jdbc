package com.freedom.shardingjdbc.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * @author freedom
 * @date 2020/6/17 20:59
 */
@Data
@TableName("t_user")
public class User implements Serializable {

    private static final long serialVersionUID = -862638715822619011L;

    @TableId(type = IdType.ASSIGN_ID)
    private Long userId;

    private String userName;

    /**
     * 用户状态：0：不可用  1：可用
     */
    private Integer userStatus;
}
