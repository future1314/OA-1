<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head>
	<title>版块设置</title>
	<%@ include file="/WEB-INF/jsp/public/commons.jspf" %>
    <script type="text/javascript">
    </script>
</head>
<body>

<!-- 标题显示 -->
<div id="Title_bar">
    <div id="Title_bar_Head">
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img src="${pageContext.request.contextPath }/style/images/title_arrow.gif" width="13" height="13" border="0"> 版块设置
        </div>
        <div id="Title_End"></div>
    </div>
</div>

<!--显示表单内容-->
<div id="MainArea">
	<s:form action="forumManage_%{id == null ? 'add' : 'edit'}">
		<!-- 隐藏表单内容 -->
		<s:hidden name="id" value="%{#request.forum.id}"></s:hidden>
		
        <div class="ItemBlock_Title1"><!-- 信息说明<DIV CLASS="ItemBlock_Title1">
        	<IMG BORDER="0" WIDTH="4" HEIGHT="7" SRC="${pageContext.request.contextPath }/style/blue/images/item_point.gif" /> 版块信息 </DIV>  -->
        </div>
        
        <!-- 表单内容显示 -->
        <div class="ItemBlockBorder">
            <div class="ItemBlock">
                <table class="mainForm" cellspacing="0" cellpadding="0">
                    <tbody>
	                    <tr>
	                        <td width="100">版块名称</td>
	                        <td><s:textfield name="name" cssClass="InputStyle" value="%{#request.forum.name}" > *</s:textfield></td>
	                    </tr>
	                    <tr>
	                        <td>版块说明</td>
	                        <td><s:textarea name="description" cssClass="TextareaStyle" value="%{#request.forum.description}"></s:textarea></td>
	                    </tr>
                	</tbody>
                </table>
            </div>
        </div>
        
        <!-- 表单操作 -->
        <div id="InputDetailBar">
            <input src="${pageContext.request.contextPath }/style/images/save.png" type="image">
            <a href="javascript:history.go(-1);"><img src="${pageContext.request.contextPath }/style/images/goBack.png"></a>
        </div>
    </s:form>
</div>

<div class="Description">
	说明：<br>
	1，新添加的版块默认显示在最下面。<br>
</div>



</body></html>