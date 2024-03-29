<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="contextPath">${pageContext.request.contextPath}</c:set>  
<html>
<head>
 <meta http-equiv="Content-Type" content="multipart/form-data; charset=utf-8" />
    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://cdn.bootcss.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="http://cdn.bootcss.com/ionicons/2.0.1/css/ionicons.min.css">
    <script src="//cdn.bootcss.com/jquery/2.1.4/jquery.min.js"></script>
    <script src="//cdn.bootcss.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
</head>
<body>
            <div class="login-panel panel panel-default" >
                <div class="panel-heading">
                    <h3 class="panel-title" style="text-align: center;">新增人物</h3>
                </div>
                <div class="panel-body">
                    <form role="form" action="../AnimeCharacterController/add" id="add_Form" method="post" enctype="multipart/form-data">
                        <fieldset>
                            <div class="form-group">
                                <input style="width:300px" class="form-control" placeholder="名稱" name="name" autofocus>
                            </div>
                            <!-- Change this to a button or input when using this as a form -->
       							 圖片:<input type="file" id="Image" name="file"><br>
             					 <img style="display:none" height="20%" width="20%" id="previewImage" src="#" />
						
                            <br>
                            <div class="container-fluid">
								<div class="row">
									<div class="col-sm-6">
										<input type="submit" class="btn btn-lg btn-success btn-block" id='add_btn' value="新增">
									</div>
									<div class="col-sm-6">
										<button type="button" class="btn btn-lg btn-danger btn-block" data-dismiss="modal">取消</button>
									</div>		
								</div>
							</div>				    	          
                        </fieldset>
                    </form>
                </div>
            </div>
<script type="text/javascript">
$("#Image").change(function(){
	  readURL(this);
	});

function readURL(input){
	  if(input.files && input.files[0]){
	    var reader = new FileReader();
	    reader.onload = function (e) {
	       $("#previewImage").attr('src', e.target.result);
	       $("#previewImage").show();
	    }
	    reader.readAsDataURL(input.files[0]);
	  }
	}
</script>
</body>
</html>
