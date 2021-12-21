package com.mbenfredj.vueblog.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mbenfredj.vueblog.entity.User;
import com.mbenfredj.vueblog.dao.UserDao;
import com.mbenfredj.vueblog.service.UserService;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl extends ServiceImpl<UserDao, User> implements UserService {
}
