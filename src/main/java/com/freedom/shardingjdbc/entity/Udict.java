package com.freedom.shardingjdbc.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * @author freedom
 * @date 2020/6/21 15:32
 */
@Data
@TableName("t_udict")
public class Udict implements Serializable {

    private static final long serialVersionUID = 8802771075845422620L;

    @TableId
    private Long dictId;

    private String uStatus;

    private String uValue;
}
