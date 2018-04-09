package orm.monkey.ssm.util;

public class StringUtil {
    
    /**
     * 判断字符串是否为空
     * @param value
     * @return 
     *      ture 为空
     *      false 不为空
     */
    public static boolean isEmpty(String value) {
        if(null == value) {
            return true;
        } else {
            return value.trim().isEmpty();
        }
    }
}
