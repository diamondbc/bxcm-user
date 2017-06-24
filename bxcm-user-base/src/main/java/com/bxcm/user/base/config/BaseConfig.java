package com.bxcm.user.base.config;

import com.baidu.disconf.client.common.annotations.DisconfItem;
import org.springframework.stereotype.Service;

/**
 * Created by guolongcang on 2017/3/8.
 */
@Service
public class BaseConfig {

    private String demo;

    @DisconfItem(key = "demo")
    public String getDemo() {
        return demo;
    }

    public void setDemo(String demo) {
        this.demo = demo;
    }
}
