<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<script type="text/javascript">
/**
 * my_click和my_blur均是用于前台页面搜索框的函数
 */
//鼠标点击搜索框时执行
function my_click(obj, myid){
	//点击时，如果取得的值和搜索框默认value值相同，则将搜索框清空
	if (document.getElementById(myid).value == document.getElementById(myid).defaultValue){
	  document.getElementById(myid).value = '';
	  obj.style.color='#000';
	}
}
//鼠标不聚焦在搜索框时执行
function my_blur(obj, myid){
	//鼠标失焦时，如果搜索框没有输入值，则用搜索框的默认value值填充
	if (document.getElementById(myid).value == ''){
	 document.getElementById(myid).value = document.getElementById(myid).defaultValue;
	 obj.style.color='#999';
 }
}

/**
 * 点击搜索按钮执行的函数
 */
function search(){
	document.getElementById("searchform").submit();
}
</script>
<div id="divmenu">
		<a href="${pageContext.request.contextPath}/showProductByPage?category=动作">动作</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=射击">射击</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=角色扮演">角色扮演</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=策略">策略</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=模拟经营">模拟经营</a>
        <a href="${pageContext.request.contextPath}/showProductByPage?category=休闲竞速">休闲竞速</a>
		<a href="${pageContext.request.contextPath}/showProductByPage">全部商品目录</a>		
</div>
<div id="divsearch">
<form action="${pageContext.request.contextPath }/MenuSearchServlet" id="searchform">
	<table width="100%" border="0" cellspacing="0">
		<tr>
			<td style="text-align:right; padding-right:220px"> 
				<input type="text" name="textfield" class="inputtable" id="textfield" value="查找游戏"
				onmouseover="this.focus();"
				onclick="my_click(this, 'textfield');"
				onBlur="my_blur(this, 'textfield');"/> 
				<a href="#">
					<input type="button" value="搜索" border="0"  onclick="search()"/> 
				</a>
			</td>
		</tr>
	</table>
</form>
</div>