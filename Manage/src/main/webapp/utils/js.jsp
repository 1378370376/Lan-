<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
		<script src="${pageContext.request.contextPath}/js/classie.js"></script>
		<script>
			var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				body = document.body;
			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};
			
			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
			}
		</script>
		<script src="${pageContext.request.contextPath}/js/jquery.nicescroll.js"></script>
	     <script src="${pageContext.request.contextPath}/js/scripts.js"></script>
	

   <script src="${pageContext.request.contextPath}/js/bootstrap.js"> </script>
   <script src="${pageContext.request.contextPath}/js/bootstrap-datetimepicker.min.js"> </script>
   <script src="${pageContext.request.contextPath}/js/bootstrap-datetimepicker.zh-CN.js"> </script>