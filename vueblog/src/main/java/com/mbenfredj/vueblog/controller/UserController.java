package com.mbenfredj.vueblog.controller;

import com.mbenfredj.vueblog.common.lang.Result;
import com.mbenfredj.vueblog.entity.User;
import com.mbenfredj.vueblog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService userService;

    @GetMapping("/{id}")
    public Object test(@PathVariable("id") Long id) {
        return userService.getById(id);
    }

    @GetMapping("/index")
    public Result index() {
        User user = userService.getById(1L);
        return Result.succ(user);

    }

}
