<#assign base = request.contextPath />
<#assign activeId = 0 />
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
					首页					
				</h1>
				
				<div class="stat-container">
										
					<div class="stat-holder">						
						<div class="stat">							
							<span>564</span>							
							销售订单						
						</div> <!-- /stat -->						
					</div> <!-- /stat-holder -->
					
					<div class="stat-holder">						
						<div class="stat">							
							<span>423</span>							
							增加订单							
						</div> <!-- /stat -->						
					</div> <!-- /stat-holder -->
					
					<div class="stat-holder">						
						<div class="stat">							
							<span>96</span>							
							退货订单							
						</div> <!-- /stat -->						
					</div> <!-- /stat-holder -->
					
					<div class="stat-holder">						
						<div class="stat">							
							<span>2</span>							
							退款数量							
						</div> <!-- /stat -->						
					</div> <!-- /stat-holder -->
					
				</div> <!-- /stat-container -->
				
				<div class="widget">
										
					<div class="widget-header">
						<i class="icon-signal"></i>
						<h3>图表统计</h3>
					</div> <!-- /widget-header -->
														
					<div class="widget-content">					
						<div id="bar-chart" class="chart-holder"></div> <!-- /bar-chart -->				
					</div> <!-- /widget-content -->
					
				</div> <!-- /widget -->
				
				
				
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>表格</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
					
						<table class="table table-striped table-bordered">
							<thead>
								<tr>
									<th></th>
									<th>名</th>
									<th>姓</th>
									<th>用户名</th>
									<th>公司</th>
									<th>操作</th>
								</tr>
							</thead>
							
							<tbody>
								<tr>
									<td>1</td>
									<td>Michael</td>
									<td>Jordan</td>
									<td>@mjordan</td>
									<td>Chicago Bulls</td>
									<td class="action-td">
									</td>
								</tr>
								<tr>
									<td>2</td>
									<td>Magic</td>
									<td>Johnson</td>
									<td>@mjohnson</td>
									<td>Los Angeles Lakers</td>
									<td class="action-td">
									</td>
								</tr>
								<tr>
									<td>3</td>
									<td>Charles</td>
									<td>Barkley</td>
									<td>@cbarkley</td>
									<td>Phoenix Suns</td>
									<td class="action-td">
									</td>
								</tr>
								<tr>
									<td>4</td>
									<td>Karl</td>
									<td>Malone</td>
									<td>@kmalone</td>
									<td>Utah Jazz</td>
									<td class="action-td">
									</td>
								</tr>
								<tr>
									<td>5</td>
									<td>David</td>
									<td>Robinson</td>
									<td>@drobinson</td>
									<td>San Antonio Spurs</td>
									<td class="action-td">
									</td>
								</tr>
								<tr>
									<td>6</td>
									<td>Reggie</td>
									<td>Miller</td>
									<td>@rmiller</td>
									<td>Indiana Pacers</td>
									<td class="action-td">
								</tr>
								<tr>
									<td>7</td>
									<td>Clyde</td>
									<td>Drexler</td>
									<td>@cdrexler</td>
									<td>Portland Trail Blazers</td>
									<td class="action-td">
									</td>
								</tr>
								<tr>
									<td>8</td>
									<td>Hakeem</td>
									<td>Olajuwon</td>
									<td>@holajuwon</td>
									<td>Houston Rockets</td>
									<td class="action-td">
									</td>
								</tr>
							</tbody>
						</table>
					
					</div> <!-- /widget-content -->
					
				</div> <!-- /widget -->
				
				
				
				
				<div class="row">
					
					<div class="span5">
									
						<div class="widget">
							
							<div class="widget-header">
								<h3>5列标题</h3>
							</div> <!-- /widget-header -->
																
							<div class="widget-content">
								<p>5列布局内容显示5列布局内容显示5列布局内容显示5列布局内容显示5列布局内容显示5列布局内容显示5列布局内容显示5列布局内容显示5列布局内容显示5列布局内容显示5列布局内容显示5列布局内容显示5列布局内容显示5列布局内容显示5列布局内容显示5列布局内容显示5列布局内容显示5列布局内容显示5列布局内容显示5列布局内容显示4列布局内容显示4列布局内容显示4列布局内容显示4列布局内容显示.</p>
							</div> <!-- /widget-content -->
							
						</div> <!-- /widget -->
						
					</div> <!-- /span5 -->
		
					<div class="span4">
						
						<div class="widget">
							
							<div class="widget-header">
								<h3>4列标题</h3>
							</div> <!-- /widget-header -->
																
							<div class="widget-content">
								<p>4列布局内容显示4列布局内容显示4列布局内容显示4列布局内容显示4列布局内容显示4列布局内容显示4列布局内容显示4列布局内容显示4列布局内容显示4列布局内容显示4列布局内容显示4列布局内容显示4列布局内容显示4列布局内容显示4列布局内容显示4列布局内容显示4列布局内容显示4列布局内容显示4列布局内容显示4列布局内容显示.</p>
							</div> <!-- /widget-content -->
							
						</div> <!-- /widget -->
					</div> <!-- /span4 -->
					
				</div> <!-- /row -->
				
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
<script src="${base}/adminresources/js/jquery.flot.js"></script>
<script src="${base}/adminresources/js/jquery.flot.pie.js"></script>
<script src="${base}/adminresources/js/jquery.flot.orderBars.js"></script>
<script src="${base}/adminresources/js/jquery.flot.resize.js"></script>


<script src="${base}/adminresources/bootstrap/js/bootstrap.js"></script>
<script src="${base}/adminresources/js/charts/bar.js"></script>

  </body>
</html>
