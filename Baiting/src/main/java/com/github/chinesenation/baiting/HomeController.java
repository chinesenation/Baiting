/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.github.chinesenation.baiting;

import com.github.chinesenation.baiting.domain.Aluminum;
import com.github.chinesenation.baiting.domain.Setting;
import javax.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author liangwang
 */
@Controller
public class HomeController {

    @Autowired
    ServletContext servletContext;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String welcome(Model model) {
        Setting setting = (Setting) servletContext.getAttribute("setting");

        if ((int) setting.getUpdirection_param1() == 0 &&(int) setting.getUpsliding_param1() == 0) {
            model.addAttribute("greeting", "请先设置公式!");
        }

        return "welcome";
    }

    @RequestMapping(value = "/result", method = RequestMethod.GET)
    public String result(@RequestParam(value = "height") float height,
            @RequestParam(value = "width") float width,
            Model model) {
        Setting setting = (Setting) servletContext.getAttribute("setting");
        Aluminum aluminum = new Aluminum();
        aluminum.setHeight(height);
        aluminum.setWidth(width);

        model.addAttribute("aluminum", aluminum.cal(setting));
        return "result";
    }

    @RequestMapping(value = "/setting", method = RequestMethod.GET)
    public String setting(Model model) {
        Setting setting = (Setting) servletContext.getAttribute("setting");
        model.addAttribute("setting", setting);
        return "setting";
    }

    @RequestMapping(value = "/setting", method = RequestMethod.POST)
    public String setting_save(Setting setting, Model model) {
        servletContext.setAttribute("setting", setting);
        return "redirect:/";
    }
}
