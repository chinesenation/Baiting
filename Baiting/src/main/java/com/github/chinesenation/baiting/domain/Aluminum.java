/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.github.chinesenation.baiting.domain;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author liangwang
 */
public class Aluminum {

    //高和宽
    private float height;
    private float width;

    //上滑
    private float upsliding;
    //上滑差值
    private float upsliding_param1;

    //上方
    private float updirection;
    //上方差值
    private float updirection_param1;

    //中柱
    private float stele;
    //中柱差值1
    private float stele_param1;
    //中柱差值2
    private float stele_param2;

    //风盖
    private float windcover;
    private float windcover_param1;

    //摇头玻璃
    private float shakewidth;
    private float shakewidth_param1;
    private float shakeheight;
    private float shakeheight_param1;

    //门子玻璃
    private float siemenswidth;
    private float siemenswidth_param1;
    private float siemensheight;
    private float siemensheight_param1;

    
   
    public Aluminum cal(Setting setting) {
        float _upsliding_param1 = setting.getUpsliding_param1();
        float _updirection_param1 = setting.getUpdirection_param1();
        List<Hook> _hooks = new ArrayList<>();
        _hooks.add(new Hook(Float.POSITIVE_INFINITY, setting.getHookA_lower(), setting.getHookA_value()));
        _hooks.add(new Hook(setting.getHookB_up(), setting.getHookB_lower(), setting.getHookB_value()));
        _hooks.add(new Hook(setting.getHookC_up(), 0f, setting.getHookC_value()));

        
        float _stele_param1 = setting.getStele_param1();
        float _stele_param2 = setting.getStele_param2();
        float _cover_param1 = setting.getWindcover_param1();
        float _shakewidth_param1 = setting.getShakewidth_param1();
        float _shakeheight_param1 = setting.getShakeheight_param1();
        
        
        float _siemensheight_param1 = setting.getSiemensheight_param1();
        float _siemenswidth_param1 = setting.getShakewidth_param1();

        Aluminum aluminum = new Aluminum();
        aluminum.setHeight(height);
        aluminum.setWidth(width);
        aluminum.setUpsliding_param1(_upsliding_param1);
        aluminum.setUpsliding(aluminum.getWidth() - aluminum.getUpsliding_param1());

        aluminum.setUpdirection_param1(_updirection_param1);
        aluminum.setUpdirection((aluminum.getUpsliding() + _updirection_param1) / 2);

        aluminum.setHooks(_hooks);
        aluminum.setHookvalue(aluminum.getcalhookValue());

        aluminum.setStele_param1(_stele_param1);
        aluminum.setStele_param2(_stele_param2);
        aluminum.setStele(aluminum.getHeight() - aluminum.getcalhookValue() - aluminum.getStele_param1() - aluminum.getStele_param2());

       
        aluminum.setWindcover_param1(_cover_param1);
        aluminum.setWindcover(aluminum.getStele() - aluminum.getWindcover_param1());
        
        aluminum.setShakewidth_param1(_shakewidth_param1);
        aluminum.setShakewidth((aluminum.getUpsliding()-5f)/2);
        aluminum.setShakeheight_param1(_shakeheight_param1);
        aluminum.setShakeheight(aluminum.getStele()+aluminum.getShakeheight_param1());
        
        
        aluminum.setSiemensheight_param1(_siemensheight_param1);
        aluminum.setSiemensheight(aluminum.getHookvalue()-aluminum.getSiemensheight_param1());
        aluminum.setSiemenswidth_param1(_siemenswidth_param1);
        aluminum.setSiemenswidth(aluminum.getUpdirection() -aluminum.getSiemenswidth_param1());
        
        
        return aluminum;
    }

    private float getcalhookValue() {
        for (Hook h : hooks) {
            if (this.getHeight() > h.getLowerlimit() && this.getHeight() < h.getUpperlimit()) {
                return h.getValue();
            }
        }
        return Float.NaN;
    }
    
     public float getShakewidth() {
        return shakewidth;
    }

    public void setShakewidth(float shakewidth) {
        this.shakewidth = shakewidth;
    }

    public float getShakewidth_param1() {
        return shakewidth_param1;
    }

    public void setShakewidth_param1(float shakewidth_param1) {
        this.shakewidth_param1 = shakewidth_param1;
    }

    public float getShakeheight() {
        return shakeheight;
    }

    public void setShakeheight(float shakeheight) {
        this.shakeheight = shakeheight;
    }

    public float getShakeheight_param1() {
        return shakeheight_param1;
    }

    public void setShakeheight_param1(float shakeheight_param1) {
        this.shakeheight_param1 = shakeheight_param1;
    }

    public float getSiemenswidth() {
        return siemenswidth;
    }

    public void setSiemenswidth(float siemenswidth) {
        this.siemenswidth = siemenswidth;
    }

    public float getSiemenswidth_param1() {
        return siemenswidth_param1;
    }

    public void setSiemenswidth_param1(float siemenswidth_param1) {
        this.siemenswidth_param1 = siemenswidth_param1;
    }

    public float getSiemensheight() {
        return siemensheight;
    }

    public void setSiemensheight(float siemensheight) {
        this.siemensheight = siemensheight;
    }

    public float getSiemensheight_param1() {
        return siemensheight_param1;
    }

    public void setSiemensheight_param1(float siemensheight_param1) {
        this.siemensheight_param1 = siemensheight_param1;
    }

    //光勾
    private List<Hook> hooks;

    private float hookvalue;

    public float getHeight() {
        return height;
    }

    public void setHeight(float height) {
        this.height = height;
    }

    public float getWidth() {
        return width;
    }

    public void setWidth(float width) {
        this.width = width;
    }

    public float getUpsliding() {
        return upsliding;
    }

    public void setUpsliding(float upsliding) {
        this.upsliding = upsliding;
    }

    public float getUpsliding_param1() {
        return upsliding_param1;
    }

    public void setUpsliding_param1(float upsliding_param1) {
        this.upsliding_param1 = upsliding_param1;
    }

    public float getUpdirection() {
        return updirection;
    }

    public void setUpdirection(float updirection) {
        this.updirection = updirection;
    }

    public float getUpdirection_param1() {
        return updirection_param1;
    }

    public void setUpdirection_param1(float updirection_param1) {
        this.updirection_param1 = updirection_param1;
    }

    public List<Hook> getHooks() {
        return hooks;
    }

    public void setHooks(List<Hook> hooks) {
        this.hooks = hooks;
    }

    public float getHookvalue() {
        return hookvalue;
    }

    public void setHookvalue(float hookvalue) {
        this.hookvalue = hookvalue;
    }

    public float getStele() {
        return stele;
    }

    public void setStele(float stele) {
        this.stele = stele;
    }

    public float getStele_param1() {
        return stele_param1;
    }

    public void setStele_param1(float stele_param1) {
        this.stele_param1 = stele_param1;
    }

    public float getStele_param2() {
        return stele_param2;
    }

    public void setStele_param2(float stele_param2) {
        this.stele_param2 = stele_param2;
    }

    public float getWindcover() {
        return windcover;
    }

    public void setWindcover(float windcover) {
        this.windcover = windcover;
    }

    public float getWindcover_param1() {
        return windcover_param1;
    }

    public void setWindcover_param1(float windcover_param1) {
        this.windcover_param1 = windcover_param1;
    }


}
