package com.bxcm.session.web;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bxcm.user.base.config.BaseConfig;
import com.bxcm.user.common.DemoDto;


@RestController
public class DemoController {

    @Resource
    private BaseConfig baseConfig;
    


    @RequestMapping(value = "/conf")
    public String conf() {
        return baseConfig.getDemo();
    }

    @RequestMapping(value = "/cn")
    public String cn() {
        return "你好";
    }

    @RequestMapping(value = "/test")
    public String test(DemoDto demo) {
        return "你好";
    }

}
