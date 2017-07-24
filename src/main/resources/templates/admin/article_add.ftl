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
				
						<div class="widget">
							
							<div class="widget-header">
								<h3>添加</h3>
							</div> <!-- /widget-header -->
									
							<div class="widget-content">
								<div class="tabbable">
								<ul class="nav nav-tabs">
								  <li class="active">
								    <a href="#1" data-toggle="tab">资料</a>
								  </li>
								</ul>
								
								<br />
								
									<div class="tab-content">
										<div class="tab-pane active" id="1">
										<form  class="form-horizontal" action="add" method="post"/>
											<input type="hidden" name="type" value="${type}" />
											<fieldset>
												
												<div class="control-group">											
													<label class="control-label" for="name">标题：</label>
													<div class="controls">
														<input type="text" class="input-medium" id="name" name="title" value="" />
													</div> <!-- /controls -->				
												</div> <!-- /control-group -->
												
												<div class="control-group">											
													<label class="control-label" for="orders">排序：</label>
													<div class="controls">
														<input type="text" class="input-medium" id="orders" name="orders" value="" />
													</div> <!-- /controls -->				
												</div> <!-- /control-group -->
												
												<div class="control-group">											
													<label class="control-label" for="image">图片：</label>
													<div class="controls">
														<input type="text" class="input-large" id="image"  name="image" value="" />
													</div> <!-- /controls -->				
												</div> <!-- /control-group -->
												
												<div class="control-group">											
													<label class="control-label" for="imageButton"></label>
													<div class="controls">
											   			<input type="file" name="file" id="imageButton" class="uploader" index="2">
													</div> <!-- /controls -->				
												</div> <!-- /control-group -->
												
												<#if type=="SOLUTION"||type=="CASE">
													<div class="control-group">											
														<label class="control-label" for="contentarea">内容：</label>
														<div class="controls">
															<textarea id="contentarea" name="content" class="editor" style="width: 100%;"></textarea>
														</div> <!-- /controls -->				
													</div> <!-- /control-group -->
												<#elseif type=="COMPANYNEWS"||type=="INDUSTRYNEWS">
													<div class="control-group">											
														<label class="control-label" for="contentarea2">内容：</label>
														<div class="controls">
															<textarea id="contentarea2" name="content" style="width:400px;height:200px"></textarea>
														</div> <!-- /controls -->				
													</div> <!-- /control-group -->
												</#if>			
												
													<br />
													
												<div class="form-actions">
													<input type="submit" class="btn btn-primary" value="保存"/>
													<button class="btn">取消</button>
												</div> <!-- /form-actions -->
											</fieldset>
										</form>
										</div>
										
									</div>
								  
								</div>
								
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

<script type="text/javascript" charset="utf-8" src="${base}/adminresources/ueditor/ueditor.js"></script>
<script type="text/javascript" charset="utf-8" src="${base}/adminresources/js/temp_common.js"></script>

<script src="${base}/adminresources/bootstrap/js/bootstrap.js"></script>
<script src="${base}/adminresources/js/charts/bar.js"></script>
<script>
$(document).ready(function(){

	var $contentarea = $("#contentarea");

	$contentarea.editor();

	$(".uploader").on("change",function(){
		var test = $('.uploader')[0];
		var $this = $(this);
		var $image = $('#image');
	    var formData = new FormData();
		formData.append('file', $this[0].files[0]);
		formData.append('parmId', 4);
		$.ajax({
		    url: '../upload',
		    type: 'POST',
		    cache: false,
		    data: formData,
		    processData: false,
		    contentType: false
		}).done(function(res) {
			if(res.status==1){
				$image.val("/upload/"+res.name);
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
