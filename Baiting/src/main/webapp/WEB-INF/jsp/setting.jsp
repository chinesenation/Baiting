<%-- 
    Document   : setting
    Created on : Apr 10, 2016, 2:40:39 PM
    Author     : liangwang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>

<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">         
        <title>设置</title>
        <link rel="stylesheet" href="public/css/weui/dist/style/weui.min.css"/>
        <style>
            .weui_input_Content {
                border: 0;
                outline: 0;
                -webkit-appearance: none;
                background-color: transparent;
                font-size: inherit;
                color: inherit;
                height: 1.41176471em;
                line-height: 1.41176471;
            }
        </style>
    </head>
    <body>

        <s:url value="/" var="url" htmlEscape="true"/>
        <sf:form  class="container" method="POST">
            <div class="cell">
                <div class="hd">
                    <h1 class="page_title">参数设置</h1>
                </div>

                <div class="weui_cells weui_cells_form">
                    <div class="weui_cell">
                        <div class="weui_cell_hd">
                            <label class="weui_label">上滑=</label>
                        </div>
                        <div class="weui_cell_hd">
                            宽-<input name="upsliding_param1" value="${setting.upsliding_param1}" class="weui_input_Content" type="number"  placeholder="请输入数值(cm)" required/>
                        </div>
                    </div>
                </div>

                <div class="weui_cell">
                    <div class="weui_cell_hd">
                        <label class="weui_label">上方=</label>
                    </div>
                    <div class="weui_cell_hd">
                        (上滑+<input value="${setting.updirection_param1}" name="updirection_param1" class="weui_input_Content" type="number"  placeholder="请输入数值(cm)" required/>)/2
                    </div>
                </div>

                <div class="weui_cell">
                    <div class="weui_cell_hd">
                        <label class="weui_label">光勾A</label>
                    </div>
                    <div class="weui_cell_bd">
                        >=<input name="hookA_lower" value="${setting.hookA_lower}" class="weui_input_Content" type="number"  placeholder="请输入数值(cm)" required/>
                        <input name="hookA_value"  value="${setting.hookA_value}" class="weui_input_Content" type="number"  placeholder="请输入光勾A(cm)" required/>
                    </div>
                </div>

                <div class="weui_cell">
                    <div class="weui_cell_hd">
                        <label class="weui_label">光勾B</label>
                    </div>
                    <div class="weui_cell_bd"> 
                        <input value="${setting.hookB_lower}" name="hookB_lower" class="weui_input_Content" type="number"  placeholder="请输入数值(cm)" required/>
                        到<input value="${setting.hookB_up}" name="hookB_up" class="weui_input_Content" type="number"  placeholder="请输入数值(cm)" required/>
                        <input value="${setting.hookB_value}" name="hookB_value" class="weui_input_Content" type="number"  placeholder="请输入光勾B(cm)" required/>
                    </div>
                </div>
                <div class="weui_cell">
                    <div class="weui_cell_hd">
                        <label class="weui_label">光勾C</label>
                    </div>
                    <div class="weui_cell_bd"> 
                        0到<input value="${setting.hookC_up}" name="hookC_up" class="weui_input_Content" type="number"  placeholder="请输入数值(cm)" required/>
                        <input value="${setting.hookC_value}" name="hookC_value" class="weui_input_Content" type="number"  placeholder="请输入光勾C(cm)" required/>
                    </div>
                </div>
                
                 <div class="weui_cells weui_cells_form">
                    <div class="weui_cell">
                        <div class="weui_cell_hd">
                            <label class="weui_label">中柱=</label>
                        </div>
                        <div class="weui_cell_hd">
                            高-(光勾+<input value="${setting.stele_param1}" name="stele_param1" class="weui_input_Content" type="number"  placeholder="请输入数值(cm)" required/>
                            )-<input value="${setting.stele_param2}" name="stele_param2" class="weui_input_Content" type="number"  placeholder="请输入数值(cm)" required/>
                        </div>
                    </div>
                </div>
                
                
                 <div class="weui_cells weui_cells_form">
                    <div class="weui_cell">
                        <div class="weui_cell_hd">
                            <label class="weui_label">风盖=</label>
                        </div>
                        <div class="weui_cell_hd">
                            中柱-<input value="${setting.windcover_param1}" name="windcover_param1" class="weui_input_Content" type="number"  placeholder="请输入数值(cm)" required/>
                        </div>
                    </div>
                </div>
                
                <div class="weui_cells weui_cells_form">
                    <div class="weui_cell">
                        <div class="weui_cell_hd">
                            <label class="weui_label">摇头玻璃高=</label>
                        </div>
                        <div class="weui_cell_hd">
                            中柱-<input value="${setting.shakeheight_param1}" name="shakeheight_param1" class="weui_input_Content" type="number"  placeholder="请输入数值(cm)" required/>
                        </div>
                    </div>
                </div>
                
                 <div class="weui_cells weui_cells_form">
                    <div class="weui_cell">
                        <div class="weui_cell_hd">
                            <label class="weui_label">摇头玻璃宽=</label>
                        </div>
                        <div class="weui_cell_hd">
                            (上滑-<input value="${setting.shakewidth_param1}" name="shakewidth_param1" class="weui_input_Content" type="number"  placeholder="请输入数值(cm)" required/>)/2
                        </div>
                    </div>
                </div>
                
                
                  <div class="weui_cells weui_cells_form">
                    <div class="weui_cell">
                        <div class="weui_cell_hd">
                            <label class="weui_label">门子玻璃高=</label>
                        </div>
                        <div class="weui_cell_hd">
                            光勾-<input value="${setting.siemensheight_param1}" name="siemensheight_param1" class="weui_input_Content" type="number"  placeholder="请输入数值(cm)" required/>
                        </div>
                    </div>
                </div>
                
                 <div class="weui_cells weui_cells_form">
                    <div class="weui_cell">
                        <div class="weui_cell_hd">
                            <label class="weui_label">门子玻璃宽=</label>
                        </div>
                        <div class="weui_cell_hd">
                            上方-<input value="${setting.siemenswidth_param1}" name="siemenswidth_param1" class="weui_input_Content" type="number"  placeholder="请输入数值(cm)" required/>
                        </div>
                    </div>
                </div>
                
            </div>

            <br/>
            <button type="submit" class="weui_btn weui_btn_primary">确认</button>
            <a href="${url}" class="weui_btn weui_btn_primary">返回</a>
        </sf:form>


    </body>
</html>
