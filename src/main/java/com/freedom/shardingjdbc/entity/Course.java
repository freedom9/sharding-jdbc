package com.freedom.shardingjdbc.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * @author freedom
 * @date 2020/6/11 21:11
 */
@Data
public class Course implements Serializable {

    private static final long serialVersionUID = -4724810330274221742L;

    private Long id;

    private String name;

    private Long userId;

    /**
     * 发布状态：0：未发布  1：已发布
     */
    private Integer status;
}
