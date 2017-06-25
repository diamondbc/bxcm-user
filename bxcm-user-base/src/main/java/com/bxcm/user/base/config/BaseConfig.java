package com.bxcm.user.base.config;

import org.springframework.stereotype.Service;

@Service
public class BaseConfig {

    private String demo;

    public String getDemo() {
        return demo;
    }

    public void setDemo(String demo) {
        this.demo = demo;
    }
}
