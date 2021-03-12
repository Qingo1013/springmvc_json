package cn.qqa.controllers;

import cn.qqa.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * ·响应Json
 * 在视图解析器下如何响应？
 *  一、
 *      1.加入jackson依赖
 *      2.将jackson的jar包加入到WEB-INF/lib文件夹中
 *      3.在对于的处理方法上加入@ResponseBody注解，用于标记该方法返回json，适用于单体应用
 *  二、
 *      将@Controller改为@RestController，适用于webapi的方式
 * ·请求Json
 *      使用@RequestBody接受，但前提要保证是请求传过来的参数数据一定得是Json数据
 *      并且内容类型一定得是"application/json"
 *
 *
 */
@Controller
@RestController
//控制器类中，所有的处理方法都会以json的形式返回数据
//相当于所有的方法都会加上@ResponseBody
public class JsonController {

/*    @RequestMapping("/json/response")
    @ResponseBody //将返回值作为文本返回，并不是作为视图逻辑名称返回
    public String responseJson(){
        System.out.println("json!!");
        return  "json";
    }*/

    //@ResponseBody //将返回值作为文本返回，并不是作为视图逻辑名称返回
/*    public List<User> responseJson(){
        System.out.println("json!!");
        User user = new User(1, "秦清澳");
        User user2 = new User(2, "汪星源");
        List<User> list = new ArrayList<User>();
        list.add(user);
        list.add(user2);
        return  list;
    }*/

    @RequestMapping("/json/response")
    public User responseJson(){
        User user = new User(1, "秦清澳", "12345", new Date("1999/12/6"));
        return  user;
    }

    @RequestMapping("/json/response2")
    public String responseJson2(){
        System.out.println("json!!");
        return  "json";
    }

    @PostMapping(value = "/json/request01", consumes = "application/json")
    public User requestJson(@RequestBody String data){
        User user = new User(1, "秦清澳", "12345", new Date("1999/12/6"));
        System.out.println(data);
        return  user;
    }

    @PostMapping(value = "/json/request02", consumes = "application/json")
    public User requestJson02(@RequestBody User data){
        User user = new User(1, "秦清澳", "12345", new Date("1999/12/6"));
        System.out.println(data);
        return  user;
    }

    @PostMapping(value = "/json/request03", consumes = "application/json")
    public User requestJson03(@RequestBody Map<String,String> map){
        User user = new User(1, "秦清澳", "12345", new Date("1999/12/6"));
        System.out.println(map);
        return  user;
    }

    @PostMapping(value = "/json/request04", consumes = "application/json")
    public User requestJson04(@RequestBody List<User> list){
        User user = new User(1, "秦清澳", "12345", new Date("1999/12/6"));
        System.out.println(list);
        return  user;
    }

    @PutMapping(value = "/json/request05", consumes = "application/json")
    public User requestJson05(@RequestBody List<User> list){
        User user = new User(1, "秦清澳", "12345", new Date("1999/12/6"));
        System.out.println(list);
        return  user;
    }
}
