/**
 * 获取项目根路径
 * @returns
 */
function  getPath(){
    var pathName = document.location.pathname;
    var index = pathName.substr(1).indexOf("/");
    var result = pathName.substr(0,index+1);
    return result;
}
/**
 * 表单序列化为json对象
 */
$.fn.serializeObject = function() {  
    var o = {};  
    var a = this.serializeArray();  
    $.each(a, function() {  
        if (o[this.name]) {  
            if (!o[this.name].push) {  
                o[this.name] = [ o[this.name] ];  
            }  
            o[this.name].push(this.value || '');  
        } else {  
            o[this.name] = this.value || '';  
        }  
    });  
    return o;  
} 

/**
 * 判断是否为空，如果为空返回true，不为空返回false
 * @param str 要判断的字符串
 * @returns {Boolean}
 */
function isEmpty(str) {
	if(null == str || "" == str) {
		return true;
	} else {
		return false;
	}
}
