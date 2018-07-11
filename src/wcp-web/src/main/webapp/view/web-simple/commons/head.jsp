<%@ page language="java" pageEncoding="utf-8"%>
<%@page import="com.farm.web.constant.FarmConstant"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="/view/conf/farmtag.tld" prefix="PF"%>
<%@ taglib uri="/view/conf/farmdoc.tld" prefix="DOC"%>
<style>
	.navbar-nav>li>a{
		font-family: PingFangSC-Regular;
	    font-size: 16px;
	    color: #FFFFFF;
	    letter-spacing: 0;
	}
	.bor{
		border-bottom:3px solid #fff
	}
</style>
<div class="navbar  navbar-fixed-top" role="navigation" style="margin: 0px;height: 60px;">
	<!-- Brand and toggle get grouped for better mobile display -->
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target="#bs-example-navbar-collapse-1">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" style="color: #ffffff; font-weight: bold;" href="<DOC:defaultIndexPage/>"> 
			<img class="hidden-xs" src="<PF:basePath/>/text/img/LOGO2.png" style="display:inline-block;float:left;width:100%;height:60px;" alt="WCP"title="WCP" align="middle" />
		</a>
	</div>
	<!-- Collect the nav links, forms, and other content for toggling -->
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		<ul class="nav navbar-nav top-menu">
			<%-- <PF:IfParameterEquals key="config.sys.opensource" val="false">
				<li class="active"><a href="home/Pubindex.html"><span
						class="glyphicon glyphicon-home"></span>&nbsp;资讯</a></li>
			</PF:IfParameterEquals> --%>
			<li class="active" ><a href="webtype/view/Pub1.html" class="classify">&nbsp;分类</a></li>
			<!-- <li class="active"><a href="webgroup/PubHome.html"><span
					class="glyphicon glyphicon-tree-conifer"></span>&nbsp;小组</a></li>
			 <li class="active"><a href="webstat/PubHome.html"><span
					class="glyphicon glyphicon-stats"></span>&nbsp;荣誉</a></li> -->
			<li class="active" ><a href="websearch/PubHome.html" class="retrieve">&nbsp;检索</a></li>
			<%-- <PF:IfParameterEquals key="config.about" val="true">
				<li class="active"><a href="home/PubAbout.html"><span
						class="glyphicon glyphicon-phone-alt"></span>&nbsp;联系方式</a></li>
			</PF:IfParameterEquals> --%>
			
		    <li class="dropdown active">
				<jsp:include page="../operation/includeCreatOperateSuit.jsp"></jsp:include>
			</li>  
			<!-- 自适应的搜索代码，暂时隐藏 -->
		<%-- 	<li class="active" style="margin-top:10px;">
			<form action="websearch/PubDo.do" method="post"
			id="lucenesearchFormId" class="navbar-search pull-left">
				<input type="text" name="word" id="wordId" value="${word}"
					class="search-query form-control col-md-5" placeholder="查询公开资源"> <input
					type="hidden" id="pageNumId" name="pagenum">
		     </form>
			</li> --%>
			<li class="active" ><a href="frame/index.do">&nbsp;管理控制台</a></li>
	  
			
		</ul>
		 
	<%--原版的搜索和创建知识的代码 --%>
		<%-- <form action="websearch/PubDo.do" method="post"
			id="lucenesearchFormId"
			class="navbar-form navbar-left hidden-xs hidden-sm" role="search">
			<div class="form-group">
				<input type="text" name="word" id="wordId" value="${word}"
					class="form-control input-sm" placeholder="查询公开资源"> <input
					type="hidden" id="pageNumId" name="pagenum">
			</div>
			<button type="submit" class="btn btn-default btn-sm">检索</button>
			<jsp:include page="../operation/includeCreatOperate.jsp"></jsp:include>
		</form> --%>
		
		<ul class="nav navbar-nav navbar-right" style="margin-right: 10px;">
			<c:if test="${USEROBJ==null}">
				<li class="active"><a><span
						class=""></span>&nbsp;</a></li>
			</c:if>
			 <c:if test="${USEROBJ!=null}">
				<li class="active"><a><span
						class="glyphicon glyphicon-user"></span>&nbsp;${USEROBJ.name}</a></li>
				<!-- <li class="active"><a href="login/webout.html"><span
						class="glyphicon glyphicon-off"></span>&nbsp;注销</a></li> -->
			</c:if> 
		</ul>
	</div>
	<!-- /.navbar-collapse -->
</div>
<script type="text/javascript">
	function luceneSearch(key) {
		$('#wordId').val(key);
		$('#lucenesearchFormId').submit();
	}
	function luceneSearchGo(page) {
		$('#pageNumId').val(page);
		$('#lucenesearchFormId').submit();
	}
//-->
</script>