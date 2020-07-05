package com.freedom.shardingjdbc.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.freedom.shardingjdbc.entity.User;
import org.apache.ibatis.annotations.Mapper;

/**
 * @author freedom
 * @date 2020/6/17 21:01
 */
@Mapper
public interface UserMapper extends BaseMapper<User> {
}
