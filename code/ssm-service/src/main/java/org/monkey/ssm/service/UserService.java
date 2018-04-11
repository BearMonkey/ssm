package org.monkey.ssm.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.monkey.ssm.dao.UserMapper;
import org.monkey.ssm.pojo.User;
import org.monkey.ssm.service.api.IUserService;
import org.springframework.stereotype.Service;

@Service
public class UserService implements IUserService{

    private Logger log = Logger.getLogger(UserService.class);
    
    @Resource
    private UserMapper userMapper;
    
    public List<User> userList(int start, int size) {
        log.info("userList");
        return userMapper.selectAll();
    }

    public User loginCheck(String account, String passwd) {
        log.info("loginCheck");
        return userMapper.selectByAccontAndPasswd(account, passwd);
    }

}
