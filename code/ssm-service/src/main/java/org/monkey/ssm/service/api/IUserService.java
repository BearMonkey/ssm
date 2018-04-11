package org.monkey.ssm.service.api;

import java.util.List;

import org.monkey.ssm.pojo.User;

public interface IUserService {
    
    /**
     * 
     * @param start
     * @param size
     * @return
     */
    public List<User> userList(int start, int size);

    /**
     * 
     * @param account
     * @param generate
     * @return
     */
    public User loginCheck(String account, String passwd);

    /**
     * 注册检查
     * @param account
     */
    public User registCheck(String account);
}
