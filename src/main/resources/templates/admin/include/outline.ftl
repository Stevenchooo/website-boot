<div class="span3">
				
	<div class="account-container">
	
		<div class="account-avatar">
			<img src="${base}/adminresources/img/headshot.png" alt="" class="thumbnail" />
		</div> <!-- /account-avatar -->
	
		<div class="account-details">
		
			<span class="account-name">管理员</span>
			
			<span class="account-role">管理员</span>
			
			<span class="account-actions">
				<a href="javascript:;">资料</a> |
				
				<a href="javascript:;">编辑设置</a>
			</span>
		
		</div> <!-- /account-details -->
	
	</div> <!-- /account-container -->
	
	<hr />
	
	<ul id="main-nav" class="nav nav-tabs nav-stacked">
		
		<li <#if activeId == 0>class="active"</#if>>
			<a href="${base}/admin/index">
				<i class="icon-home"></i>
				首页 		
			</a>
		</li>
		
		<li <#if activeId == 1>class="active"</#if>>
			<a href="${base}/admin/index_setting">
				<i class="icon-pushpin"></i>
				首页管理	
			</a>
		</li>
		
		<li <#if activeId == 2>class="active"</#if>>
			<a href="${base}/admin/article/list?type=SOLUTION">
				<i class="icon-th-list"></i>
				解决方案		
			</a>
		</li>
		
		<li <#if activeId == 3>class="active"</#if>>
			<a href="${base}/admin/article/list?type=CASE">
				<i class="icon-th-large"></i>
				产品案例
			</a>
		</li>
		
		<li <#if activeId == 4>class="active"</#if>>
			<a href="${base}/admin/cooperator/list">
				<i class="icon-signal"></i>
				合作伙伴
			</a>
		</li>
		
		<li <#if activeId == 5>class="active"</#if>>
			<a href="${base}/admin/article/list?type=COMPANYNEWS">
				<i class="icon-user"></i>
				公司新闻					
			</a>
		</li>
		
		<li <#if activeId == 6>class="active"</#if>>
			<a href="${base}/admin/article/list?type=INDUSTRYNEWS">
				<i class="icon-lock"></i>
				行业动态
			</a>
		</li>
		
		<li <#if activeId == 7>class="active"</#if>>
			<a href="${base}/admin/connection/list">
				<i class="icon-lock"></i>
				联系查看
			</a>
		</li>
		
	</ul>	
	
	<hr />
	
	<div class="sidebar-extra">
		<p></p>
	</div> <!-- .sidebar-extra -->
	
	<br />

</div> <!-- /span3 -->