/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.github.chinesenation.baiting.domain;

/**
 *
 * @author liangwang
 */
//光勾
public class Hook {
    //上限
    private float upperlimit;
    //下限
    private float lowerlimit;
    
    //值
    private float value;

    public Hook(float upperlimit, float lowerlimit, float value) {
        this.upperlimit = upperlimit;
        this.lowerlimit = lowerlimit;
        this.value = value;
    }

    public float getUpperlimit() {
        return upperlimit;
    }

    public void setUpperlimit(float upperlimit) {
        this.upperlimit = upperlimit;
    }

    public float getLowerlimit() {
        return lowerlimit;
    }

    public void setLowerlimit(float lowerlimit) {
        this.lowerlimit = lowerlimit;
    }

    public float getValue() {
        return value;
    }

    public void setValue(float value) {
        this.value = value;
    }
    
    
}
