<%-- 
    Document   : result
    Created on : Apr 10, 2016, 2:40:48 PM
    Author     : liangwang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">         
        <title>计算结果</title>
        <link rel="stylesheet" href="public/css/weui/dist/style/weui.min.css"/>

    </head>
    <body>
        <div class="cell">
            <div class="hd">
                <h1 class="page_title">结果(${aluminum.height}cm*${aluminum.width}cm)</h1>
            </div>


            <div class="weui_cell">
                <div class="weui_cell_hd">
                    <label class="weui_label">上滑</label>
                </div>
                <div class="weui_cell_bd weui_cell_primary">
                    <label>${aluminum.upsliding}</label>
                </div>
            </div>
            <div class="weui_cell">
                <div class="weui_cell_hd">
                    <label class="weui_label">上方</label>
                </div>
                <div class="weui_cell_bd weui_cell_primary">
                    <label>${aluminum.updirection}</label>
                </div>
            </div>

            <div class="weui_cell">
                <div class="weui_cell_hd">
                    <label class="weui_label">光勾</label>
                </div>
                <div class="weui_cell_bd weui_cell_primary">
                    <label>${aluminum.hookvalue}</label>
                </div>
            </div>

            <div class="weui_cell">
                <div class="weui_cell_hd">
                    <label class="weui_label">中柱</label>
                </div>
                <div class="weui_cell_bd weui_cell_primary">
                    <label>${aluminum.stele}</label>
                </div>
            </div>

            <div class="weui_cell">
                <div class="weui_cell_hd">
                    <label class="weui_label">风盖</label>
                </div>
                <div class="weui_cell_bd weui_cell_primary">
                    <label>${aluminum.windcover}</label>
                </div>
            </div>

            <div class="weui_cell">
                <div class="weui_cell_hd">
                    <label class="weui_label">摇头玻璃</label>
                </div>
                <div class="weui_cell_bd weui_cell_primary">
                    <label>${aluminum.shakeheight}*${aluminum.shakewidth}=${(aluminum.shakeheight*aluminum.shakewidth)/10000}m<sup>2</sup></label>
                </div>
            </div>

            <div class="weui_cell">
                <div class="weui_cell_hd">
                    <label class="weui_label">门子玻璃</label>
                </div>
                <div class="weui_cell_bd weui_cell_primary">
                    <label>${aluminum.siemensheight}*${aluminum.siemenswidth}=${(aluminum.siemensheight*aluminum.siemenswidth)/10000}m<sup>2</sup></label>
                </div>
            </div>
            <div class="weui_cell">
                <div class="weui_cell_hd">
                    <label class="weui_label">总面积</label>
                </div>
                <div class="weui_cell_bd weui_cell_primary">
                    <label>${aluminum.height}*${aluminum.width}=${(aluminum.height*aluminum.width)/10000}m<sup>2</sup></label>
                </div>
            </div>

            <s:url value="/" var="url" htmlEscape="true"/>
            <a href="${url}" class="weui_btn weui_btn_primary">返回</a>
        </div>
    </body>
</html>
