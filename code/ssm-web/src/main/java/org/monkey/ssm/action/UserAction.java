package org.monkey.ssm.action;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.monkey.ssm.pojo.User;
import org.monkey.ssm.service.api.IUserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserAction {
    
    private Logger log = Logger.getLogger(UserAction.class);
    
    @Resource
    private IUserService userSerivce;
    
    @RequestMapping("user/list")
    public String listUser(){
        log.info("userAction list");
        return "user/list";
    }
    
    @RequestMapping("user/users")
    @ResponseBody
    public List<User> users(int page, int size) {
        log.info("userAction users");
        List<User> users = userSerivce.userList((page-1)*size, size);
        return users;
    }
}
