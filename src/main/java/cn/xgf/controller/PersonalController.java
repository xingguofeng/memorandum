package cn.xgf.controller;


import cn.xgf.domain.Personal;
import cn.xgf.service.PersonalService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/Personal")
public class PersonalController {

    @Resource
    private PersonalService personalService;

    //增加事件
    @RequestMapping("/addPersonal.do")
    public ModelAndView addPersonal(Personal personal){
        ModelAndView mv = new ModelAndView();
        String tips = "添加失败";

        //调用PersonalService处理
        int nums = personalService.addPersonal(personal);

        if( nums > 0 ) {
            //注册成功
            tips = "事件【" + personal.getEvent() + "】添加成功";
        }
        //添加数据
        mv.addObject("tips",tips);
        //指定结果页面
        mv.setViewName("result");
        return mv;

    }

    //处理查询，响应ajax
    @RequestMapping("/queryPersonal.do")
    @ResponseBody
    public List<Personal> queryStudent(){
        //参数检查， 简单的数据处理
        List<Personal> personals = personalService.findPersonal();
        return personals;
    }
}
