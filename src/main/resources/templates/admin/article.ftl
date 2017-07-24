<#assign base = request.contextPath />
<#if type=="SOLUTION">
	<#assign activeId = 2 />
<#elseif type=="CASE">
	<#assign activeId = 3 />
<#elseif type=="COMPANYNEWS">
	<#assign activeId = 5 />
<#elseif type=="INDUSTRYNEWS">
	<#assign activeId = 6 />
</#if>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>普云官网后台</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />    
    
    <link rel="stylesheet" href="${base}/adminresources/bootstrap/css/bootstraplower.min.css">
    <link rel="stylesheet" href="${base}/adminresources/bootstrap/css/bootstrap-responsive.min.css">
    
    <link rel="stylesheet" href="${base}/adminresources/font-awesome/css/font-awesome.css">
    
    <link href="${base}/adminresources/css/adminia.css" rel="stylesheet" /> 
    <link href="${base}/adminresources/css/adminia-responsive.css" rel="stylesheet" /> 
    
    <link href="${base}/adminresources/css/pages/dashboard.css" rel="stylesheet" /> 
    

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
	
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>

<body>
	
<#include "/admin/include/navi.ftl" />

<div id="content">
	
	<div class="container">
		
		<div class="row">
			
			<#include "/admin/include/outline.ftl" />			
			
			<div class="span9">
				
				<h1 class="page-title">
					<i class="icon-home"></i>
					<#if type=="SOLUTION">
						解决方案
					<#elseif type=="CASE">
						产品案例
					<#elseif type=="COMPANYNEWS">
						公司新闻
					<#elseif type=="INDUSTRYNEWS">
						行业动态
					</#if>				
				</h1>
				
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<button class="btn btn-primary addButton">新增</button>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
					
						<table class="table table-striped table-bordered">
							<thead>
								<tr>
									<th></th>
									<th>标题</th>
									<th>排序</th>
									<th>操作</th>
								</tr>
							</thead>
							
							<tbody>
								<#list lists as article>
									<tr>
										<td>${article.id}</td>
										<td>${article.title}</td>
										<td>${article.orders}</td>
										<td>
											<button class="btn editButton" dataId="${article.id}">编辑</button>
											<button class="btn deleteButton" dataId="${article.id}">删除</button>
										</td>
									</tr>
								</#list>
							</tbody>
						</table>
					
					</div> <!-- /widget-content -->
					
				</div> <!-- /widget -->
				
			</div> <!-- /span9 -->
			
			
		</div> <!-- /row -->
		
	</div> <!-- /container -->
	
</div> <!-- /content -->
					
<#include "/admin/include/footer.ftl" />

<!-- Le javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="${base}/adminresources/js/jquery-1.11.1.min.js"></script>
<script src="${base}/adminresources/js/excanvas.min.js"></script>


<script src="${base}/adminresources/bootstrap/js/bootstrap.js"></script>
<script src="${base}/adminresources/js/charts/bar.js"></script>
<script>
$(document).ready(function(){
	
	$addButton=$(".addButton");
	$deleteButton=$(".deleteButton");
	$editButton=$(".editButton");
	
	$editButton.on("click",function(){
		var id = $(this).attr("dataId");
		var url = "edit?id="+id;
		location.href=url;
	});
	
	$addButton.on("click",function(){
		location.href="add?type=${type}";
	});
	
	$deleteButton.on("click",function(){
		var id = $(this).attr("dataId");
		$.ajax({
			url:"delete",
			type:"post",
			data:{id:id},
			dataType:"json",
			success:function(data){
				location.reload(true);
			},
		});
	});
});
</script>
  </body>
</html>
