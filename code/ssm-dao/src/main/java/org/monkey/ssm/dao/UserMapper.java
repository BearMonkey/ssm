package org.monkey.ssm.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.monkey.ssm.pojo.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    User selectByPrimaryKey(Integer id);

    List<User> selectAll();

    int updateByPrimaryKey(User record);

    /**
     * 
     * @param account
     * @param passwd
     * @return
     */
    User selectByAccontAndPasswd(@Param("account")String account, @Param("passwd")String passwd);
}