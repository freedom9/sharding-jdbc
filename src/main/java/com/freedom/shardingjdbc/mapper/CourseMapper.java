package com.freedom.shardingjdbc.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.freedom.shardingjdbc.entity.Course;
import org.apache.ibatis.annotations.Mapper;

/**
 * @author freedom
 * @date 2020/6/11 21:11
 */
@Mapper
public interface CourseMapper extends BaseMapper<Course> {
}
