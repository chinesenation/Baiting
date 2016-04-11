<%-- 
    Document   : welcome
    Created on : Apr 8, 2016, 4:09:35 PM
    Author     : liangwang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">         
        <title>铝合金计算</title>
        <link rel="stylesheet" href="public/css/weui/dist/style/weui.min.css"/>
    </head>
    <body>
        <s:url value="/setting" var="url" htmlEscape="true"/>
        <s:url value="/result" var="resulturl" htmlEscape="true"/>
        <form  action="${resulturl}" class="container" method="GET">
            <div class="cell">
                <div class="hd">
                    <h1 class="page_title">铝合金计算器</h1>
                </div>

                <div class="weui_cells weui_cells_form">
                    <div class="weui_cell">
                        <div class="weui_cell_hd">
                            <label class="weui_label">高cm</label>
                        </div>
                        <div class="weui_cell_bd weui_cell_primary">
                            <input name="height" class="weui_input" type="text"  placeholder="请输入高度(cm)" required/>
                        </div>
                    </div>

                    <div class="weui_cell">
                        <div class="weui_cell_hd">
                            <label class="weui_label">宽cm</label>
                        </div>
                        <div class="weui_cell_bd weui_cell_primary">
                            <input name="width" class="weui_input" type="text"  placeholder="请输入宽度(cm)" required/>
                        </div>
                    </div>

                </div>
            </div>

            <br/>
            <button type="submit" class="weui_btn weui_btn_primary">计算</button>
            <button type="reset" class="weui_btn weui_btn_primary">清空</button>
            <a href="${url}" class="weui_btn weui_btn_primary">设置</a>

        </form>
        <label class="weui_label">${greeting}</label>

    </body>
</html>
