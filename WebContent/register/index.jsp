<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!--[if IE 8 ]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9 ]> <html lang="en" class="ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en"> <!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>用户注册页面</title>


<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<![endif]-->

<link href="css/normalize.css" rel="stylesheet"/>
<link href="css/jquery-ui.css" rel="stylesheet"/>
<link href="css/jquery.idealforms.min.css" rel="stylesheet" media="screen"/>

<style type="text/css">
body{font:normal 15px/1.5 Arial, Helvetica, Free Sans, sans-serif;color: #222;background:url(pattern.png);overflow-y:scroll;padding:60px 0 0 0;}
#my-form{width:755px;margin:0 auto;border:1px solid #ccc;padding:3em;border-radius:3px;box-shadow:0 0 2px rgba(0,0,0,.2);}
#comments{width:350px;height:100px;}
</style>

</head>
<body>


<div class="row">

  <div class="eightcol last">

    <!-- Begin Form -->

    <form id="my-form" action="${pageContext.request.contextPath}/RegisterServlet" method="post">

        <section name="注册步骤:">

          <form action="${pageContext.request.contextPath}/RegisterServlet" method="post">
	<table border="1">
		<tr>
			<td>用户名:</td>
			<td><input type="text" name="username" value="${uf.username}">
			<font color="red">${uf.err['username'] }</font></td>
		</tr>
		<tr>
			<td>密码:</td>
			<td>
			<input type="password" name="password" value="${uf.password}">
			<font color="red">${uf.err['password'] }</font>
			</td>
		</tr>
		<tr>
			<td>确认密码</td>
			<td><input type="password" name="repassword" value="${uf.repassword}">
			<font color="red">${uf.err['repassword'] }</font>
			</td>
		</tr>
		<tr>
			<td>电话</td>
			<td><input type="text" name="phone" value="${uf.phone}">
			<font color="red">${uf.err['phone'] }</font>
			</td>
		</tr>
		<tr>
			<td>地址</td>
			<td><input type="text" name="address" value="${uf.address}">
			<font color="red">${uf.err['address'] }</font>
			</td>
		</tr>
		<tr>
			<td>邮箱:</td>
			<td><input type="text" name="email" value="${uf.email}">
			<font color="red">${uf.err['email'] }</font>
			</td>
		</tr>
		
		<tr>
        </section>
		<tr>
			<td >
				<input type="submit" value="注册 ">
			</td>
			<td >
			<button id="reset" type="button">重置</button>
				
			
				
			</td>
		</tr>
       
       
        
      


      
        <!-- <!-- <button type="submit">提交</button>
        <button id="reset" type="button">重置</button> --> 
      

    </form>

    <!-- End Form -->

  </div>

</div>


<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/jquery.idealforms.js"></script>
<script type="text/javascript">
var options = {

	onFail: function(){
		alert( $myform.getInvalid().length +' invalid fields.' )
	},

	inputs: {
		'password': {
			filters: '',
		},
		'username': {
			filters: '',
			data: {
			//ajax: { url:'validate.php' }
			}
		},
		'file': {
			filters: '',
			data: { extension: ['jpg'] }
		},
		'comments': {
			filters: '',
			data: { min: 50, max: 200 }
		},
		'states': {
			filters: '',
			data: { exclude: ['default'] },
			errors : {
				exclude: '选择国籍.'
			}
		},
		'langs[]': {
			filters: 'min max',
			data: { min: 2, max: 3 },
			errors: {
				min: 'Check at least <strong>2</strong> options.',
				max: 'No more than <strong>3</strong> options allowed.'
			}
		}
	}
	
};

var $myform = $('#my-form').idealforms(options).data('idealforms');

$('#reset').click(function(){
	$myform.reset().fresh().focusFirst()
});

$myform.focusFirst();
</script>

</body>
</html>