package org.monkey.ssm.action;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.monkey.ssm.pojo.User;
import org.monkey.ssm.service.api.IUserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;

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
                if(null == user) {
                	
                }
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
        log.info("signUp");
        if(null == user || StringUtil.isEmpty(user.getAccount())) {
            log.info("forward");
            return "login/signUp";
        } else {
            log.info("add");
            JSONObject map = new JSONObject();
            try {
                User checkUser = userService.registCheck(user.getAccount());
                if(null != checkUser) {
                    map.put("code", "200");
                    map.put("msg", "exist_user");
                } else {
                    map.put("code", "200");
                    map.put("msg", "success");
                }
                
            } catch (Exception e) {
                // TODO: handle exception
                map.put("code", "500");
                map.put("msg", "server_error");
            }
            return map.toJSONString();
        }
    }
    
    @RequestMapping("login/signOut")
    public String signOut(){
        log.info("login signOut");
        return "/index.jsp";
    }
    
}
