package com.mbenfredj.vueblog;

import com.mbenfredj.vueblog.entity.User;
import com.mbenfredj.vueblog.dao.UserDao;
import org.junit.jupiter.api.Test;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@MapperScan("com.mbenfredj.vueblog.dao")
@SpringBootTest
class VueblogApplicationTests {

    @Autowired
    UserDao userMapper;

    @Test
    void contextLoads() {
        List<User> users = userMapper.selectList(null); //The condition constructor is not used first
        users.forEach(System.out::println);
    }

    @Test
    void insertUser(){
        User user = new User();
        user.setUsername("testUser");
        user.setPassword("0000");
        user.setEmail("111000@qq.com");
        user.setStatus(0);
        int insert = userMapper.insert(user);
    }

    @Test
    void deleteUser(){
        userMapper.deleteById(102);
    }

}
