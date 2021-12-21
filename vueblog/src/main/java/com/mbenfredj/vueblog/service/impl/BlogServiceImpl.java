package com.mbenfredj.vueblog.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mbenfredj.vueblog.entity.Blog;
import com.mbenfredj.vueblog.dao.BlogDao;
import com.mbenfredj.vueblog.service.BlogService;
import org.springframework.stereotype.Service;

@Service
public class BlogServiceImpl extends ServiceImpl<BlogDao, Blog> implements BlogService {
}
