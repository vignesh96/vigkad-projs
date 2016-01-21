<!DOCTYPE html>
<html lang="en">
<style>

#top_filters .filter.current {
    font-weight: bold;
    border-radius: 2px;
}

#top_filters li.current {
    
}

#top_filters .filter {
    font-size: 14px;
    color: #303333;
    line-height: 26px;
    list-style: none;
    cursor: pointer;
    margin-bottom: 2px;
    padding: 7px 0;
    text-overflow: ellipsis;
    white-space: nowrap;
    overflow: hidden;
    -webkit-transition: color .1s ease-in,background-color .1s ease-in;
    transition: color .1s ease-in,background-color .1s ease-in;
}

.current {
    cursor: default;
}

li {
    text-align: left;
}
user agent stylesheetli {
    display: list-item;
    text-align: -webkit-match-parent;
}

user agent stylesheetul, menu, dir {
    display: block;
    list-style-type: disc;
    -webkit-margin-before: 1em;
    -webkit-margin-after: 1em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
    -webkit-padding-start: 40px;
}


#left_menu {
    float: left;
    width: 250px;
    padding-left: 35px;
    padding-top: 50px;
    position: fixed;
    overflow-x: hidden;
    overflow-y: hidden;
    border-right: 1px solid #f1f1f1;
    background-color: #fafafa;
    -webkit-touch-callout: none !important;
    -webkit-user-select: none !important;
    -khtml-user-select: none !important;
    -moz-user-select: none !important;
    -ms-user-select: none !important;
    user-select: none !important;
}


body {
    margin: auto;
    margin-left: 0;
    color: #202020;
    background-color: #fafafa;
    font-family: "Open Sans","Helvetica",Arial,sans-serif;
    font-size: 13px;
    padding: 0 !important;
    margin-bottom: 0 !important;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    font-smooth: always;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}



</style>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
	<script src= "http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    <title>To-Do-List</title>

   <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">
	
	<script>  
var request;  
function sendInfo()  
{  
var v=document.vinform.t1.value;  
var url="action.jsp?val="+v;  
  
if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
  
try{  
request.onreadystatechange=getInfo;  
request.open("GET",url,true);  
request.send();  
}catch(e){alert("Unable to connect to server");}  
}  
  
function getInfo(){  
if(request.readyState==4){  
var val=request.responseText;  
document.getElementById('amit').innerHTML=val;  
}  
}  
  
</script>  

	<script>
var app = angular.module('myApp', []); 
app.controller('todoCtrl', function($scope,$http) {
  

		$scope.todoAdd = function() {
			$scope.todoList.push({todoText:$scope.todoInput, done:false});
			$scope.todoInput = "";
		};

		$scope.remove = function() {
			var oldList = $scope.todoList;
			$scope.todoList = [];
			angular.forEach(oldList, function(x) {
				if (!x.done) $scope.todoList.push(x);
			});
		};
	});
	
</script>


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top" ng-app="myApp" ng-controller="todoCtrl">

   <nav class="navbar navbar-default navbar-fixed-top" style="background-color:lightblue;">
        <div class="container">

            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">
                    <i class="fa fa-check"></i>  <i class="light" style="color:red;">todolist</i>
                </a>
            </div>

            
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                <ul class="nav navbar-nav">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
						<a class="page-scroll" href="#add" >
                       <i class="fa fa-plus"></i></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#notify"><i class="fa fa-bell-o"></i></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#settings"><i class="fa fa-cog fa-spin"></i></a>
                    </li>
					<li>
						<a href="logout.jsp">Logout</a>
					</li>
                </ul>
            </div>
        </div>

    </nav><br><br><br><br>
<center>	
	<form ng-submit="todoAdd()" ng-controller="todoCtrl">
    <input type="text" ng-model="todoInput" size="50" placeholder="Add New">
    <input type="submit" value="Add New">
</form>

<br>

<div ng-repeat="x in todoList">
    <input type="checkbox" ng-model="x.done"> <span ng-bind="x.todoText"></span>
</div>

<p><button ng-click="remove()">Remove marked</button></p>

<br><br><br><br>
<h1> Search your worker's progress </h1>
<form name="vinform">  
<br>
<br><h2>
<center>FIND HERE:<input type="text" name="t1" onkeyup="sendInfo()"></h2></center>  
</form>  
  
<center><div id="amit"> </div></center>  
  
</center>
</body>
</html>

	