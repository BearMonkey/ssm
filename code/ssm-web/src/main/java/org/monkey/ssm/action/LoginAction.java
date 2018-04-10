package org.monkey.ssm.action;

import javax.annotation.Resource;

import org.apache.commons.codec.digest.Md5Crypt;
import org.apache.log4j.Logger;
import org.monkey.ssm.pojo.User;
import org.monkey.ssm.service.api.IUserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import orm.monkey.ssm.util.MD5Util;
import orm.monkey.ssm.util.StringUtil;

@Controller
public class LoginAction {

    private Logger log = Logger.getLogger(LoginAction.class);
    
    @Resource
    private IUserService userService;
    
    @RequestMapping("login/signIn")
    public String signIn(String account, String passwd){
        log.info("login signIn");
        if(StringUtil.isEmpty(account)) {
            return "login/signIn";
        } else {
            try {
                log.info(MD5Util.generate(passwd));
                User user = userService.loginCheck(account, MD5Util.MD5(passwd));
            } catch (Exception e) {
                // TODO: handle exception
            }
            return "user/list";
        }
    }
    
    public ModelAndView test(){
        return new ModelAndView();
    }
    
    @RequestMapping("login/signUp")
    public String signUp(User user){
        log.info("login signUp");
        if(null == user || StringUtil.isEmpty(user.getAccount())) {
            return "login/signUp";
        } else {
            return "user/list";
        }
    }
    
    @RequestMapping("login/signOut")
    public String signOut(){
        log.info("login signOut");
        return "/index.jsp";
    }
    
}
