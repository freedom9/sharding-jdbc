package com.freedom.shardingjdbc.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.freedom.shardingjdbc.entity.Test;
import org.apache.ibatis.annotations.Mapper;

/**
 * @author freedom
 * @date 2020/6/18 21:03
 */
@Mapper
public interface TestMapper extends BaseMapper<Test> {
}
