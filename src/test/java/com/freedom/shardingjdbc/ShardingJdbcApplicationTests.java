package com.freedom.shardingjdbc;

import com.freedom.shardingjdbc.entity.Course;
import com.freedom.shardingjdbc.entity.Udict;
import com.freedom.shardingjdbc.entity.User;
import com.freedom.shardingjdbc.mapper.CourseMapper;
import com.freedom.shardingjdbc.mapper.TestMapper;
import com.freedom.shardingjdbc.mapper.UdictMapper;
import com.freedom.shardingjdbc.mapper.UserMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
class ShardingJdbcApplicationTests {

    @Autowired
    private CourseMapper courseMapper;

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private TestMapper testMapper;

    @Autowired
    private UdictMapper udictMapper;

    @Test
    public void testQueryDictList() {
        List<Udict> udictList = udictMapper.selectList(null);
        udictList.forEach(System.out::println);
    }

    @Test
    public void testAddDict() {
        Udict udict = new Udict();
        udict.setUStatus("a");
        udict.setUValue("已启用");
        udictMapper.insert(udict);
    }

    // ==========================================垂直分库==========================================
    @Test
    public void testAdd() {
        com.freedom.shardingjdbc.entity.Test test = new com.freedom.shardingjdbc.entity.Test();
        test.setName("test1");
        testMapper.insert(test);
    }

    @Test
    public void testAddUser() {
        User user = new User();
        user.setUserName("lucy");
        user.setUserStatus((int) (Math.random() * (1 - 0 + 1)));
        userMapper.insert(user);

//        Course course = new Course();
//        course.setName("java");
//        course.setUserId(user.getUserId());
//        course.setStatus((int) (Math.random() * (1 - 0 + 1)));
//        courseMapper.insert(course);
    }

    @Test
    public void testQueryUserList() {
        List<User> userList = userMapper.selectList(null);
        userList.forEach(System.out::println);
    }

    // ==========================================水平分表分库==========================================
    @Test
    public void testAddCourse() {
        for (int i = 0; i < 10; i++) {
            Course course = new Course();
            course.setName("java");
            course.setUserId((long) (Math.random() * 1000));
            course.setStatus((int) (Math.random() * (1 - 0 + 1)));
            courseMapper.insert(course);
        }
    }

    @Test
    public void testQueryCourseList() {
        Integer count = courseMapper.selectCount(null);
        List<Course> courseList = courseMapper.selectList(null);
        System.out.println("count = " + count);
        for (Course course : courseList) {
            System.out.println(course);
        }
    }

    @Test
    public void testUpdateCourse() {
        Course course = courseMapper.selectById(1273235118664929282L);
        course.setStatus(0);
        courseMapper.updateById(course);
    }

    @Test
    public void testDeleteCourse() {
        courseMapper.deleteById(1272516209611591682L);
    }

}
