package com.freedom.shardingjdbc.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * @author freedom
 * @date 2020/6/18 21:02
 */
@Data
@TableName("t_test")
public class Test implements Serializable {

    private static final long serialVersionUID = 2879760000434985444L;

    @TableId(type = IdType.AUTO)
    private Long id;

    private String name;
}
