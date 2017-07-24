<#assign base = request.contextPath />
<#assign activeId = 1 />
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
					首页设置				
				</h1>
				
				<div class="row">
					
					<div class="span3">
									
						<div class="widget">
							
							<div class="widget-header">
								<h3>首页图片一</h3>
							</div> <!-- /widget-header -->
																
							<div class="widget-content">
								<p>
									<img src="${base+image1}" style="width:240px;height:180px">
								</p>
								<div>
									<input type="text" class="img_url" value="${base+image1}">
								    <input type="file" name="file" class="uploader" index="1">
								</div>
							</div> <!-- /widget-content -->
							
						</div> <!-- /widget -->
						
					</div> <!-- /span3 -->
		
					<div class="span3">
									
						<div class="widget">
							
							<div class="widget-header">
								<h3>首页图片二</h3>
							</div> <!-- /widget-header -->
																
							<div class="widget-content">
								<p>
									<img src="${base+image2}" style="width:240px;height:180px">
								</p>
								<div>
									<input type="text" class="img_url" value="${base+image2}">
								    <input type="file" name="file" class="uploader" index="2">
								</div>
							</div> <!-- /widget-content -->
							
						</div> <!-- /widget -->
						
					</div> <!-- /span3 -->
					
					<div class="span3">
									
						<div class="widget">
							
							<div class="widget-header">
								<h3>首页图片三</h3>
							</div> <!-- /widget-header -->
																
							<div class="widget-content">
								<p>
									<img src="${base+image3}" style="width:240px;height:180px">
								</p>
								<div>
									<input type="text" class="img_url" value="${base+image3}">
								    <input type="file" name="file" class="uploader" index="3">
								</div>
							</div> <!-- /widget-content -->
							
						</div> <!-- /widget -->
						
					</div> <!-- /span3 -->
					
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


<script src="${base}/adminresources/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript">
$().ready(function() {
	$(".uploader").on("change",function(){
		var test = $('.uploader')[0];
		var $this = $(this);
	    var formData = new FormData();
		formData.append('file', $this[0].files[0]);
		formData.append('parmId', $this.attr("index"));
		$.ajax({
		    url: 'upload',
		    type: 'POST',
		    cache: false,
		    data: formData,
		    processData: false,
		    contentType: false
		}).done(function(res) {
			if(res.status==1){
				location.reload(true);
			}else if(res.status==0){
				alert("资源为空！");
			}else if(res.status==2){
				alert("上传失败！");
			}
		})
	});

});

</script>

  </body>
</html>
