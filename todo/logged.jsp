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

body{background-color:#dedede;font-family:arial}
#nav{list-style:none;margin: 0px;
padding: 0px;}
#nav li {
float: left;
margin-right: 20px;
font-size: 14px;
font-weight:bold;
}
#nav li a{color:#333333;text-decoration:none}
#nav li a:hover{color:#006699;text-decoration:none}
#notification_li{position:relative}
#notificationContainer {
background-color: #fff;
border: 1px solid rgba(100, 100, 100, .4);
-webkit-box-shadow: 0 3px 8px rgba(0, 0, 0, .25);
overflow: visible;
position: absolute;
top: 30px;
margin-left: -170px;
width: 400px;
z-index: -1;
display: none;
}
#notificationContainer:before {
content: '';
display: block;
position: absolute;
width: 0;
height: 0;
color: transparent;
border: 10px solid black;
border-color: transparent transparent white;
margin-top: -20px;
margin-left: 188px;
}
#notificationTitle {
z-index: 1000;
font-weight: bold;
padding: 8px;
font-size: 13px;
background-color: #ffffff;
width: 384px;
border-bottom: 1px solid #dddddd;
}
#notificationsBody {
padding: 33px 0px 0px 0px !important;
min-height:300px;
}
#notificationFooter {
background-color: #e9eaed;
text-align: center;
font-weight: bold;
padding: 8px;
font-size: 12px;
border-top: 1px solid #dddddd;
}
#notification_count {
padding: 3px 7px 3px 7px;
background: #cc0000;
color: #ffffff;
font-weight: bold;
margin-left: 77px;
border-radius: 9px;
position: absolute;
margin-top: -11px;
font-size: 11px;
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
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
		<script type="text/javascript" src="custom.js"></script>
		<link type="text/css" rel="stylesheet" href="overlaypopup.css" />
		<link rel="stylesheet" href="css/animate.css">
		<link rel="stylesheet" href="css/style.css">
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
		
	<script type="text/javascript" >
	$(document).ready(function()
	{
		$("#notificationLink").click(function()
		{
			$("#notificationContainer").fadeToggle(300);
			$("#notification_count").fadeOut("slow");
			return false;
		});

		//Document Click
		$(document).click(function()
		{
			$("#notificationContainer").hide();
		});
		//Popup Click
		$("#notificationContainer").click(function()
		{
			return false
		});

	});
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
						<a class="show-popup" href="#" data-showpopup="1" >
                       <i class="fa fa-plus"></i></a>
                    </li>
                    <li id="notification_li">
						<!--<span id="notification_count">3</span>-->
						<a href="#" id="notificationLink"><i class="fa fa-bell"></i></a>
					<div id="notificationContainer">
							<div id="notificationTitle">Notifications</div>
							<div id="notificationsBody" class="notifications">
							</div>
								<div id="notificationFooter"><a href="#">See All</a></div>
						</div>

					</li>
                    <li>
					  <div class="dropdown">
							<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown"><i class="fa fa-cog"></i>
								<span class="caret"></span></button>
									<ul class="dropdown-menu">
										<li><a class="show-popup" href="#" data-showpopup="2">Edit Profile</a></li>
										<li><a href="#">Help</a></li>
										<li><a href="#">Blog</a></li>
										<li><a href="#"></a></li>
										<li class="divider"></li>
										<li><a href="logout.jsp">Logout</a></li>
									</ul>
					  </div>
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

<div class="overlay-bg">
</div> 
<div class="overlay-content popup1">
    <p><br>
	<center>	
		<h1 style="color:red;">Add Task</h1>
	<form ng-submit="todoAdd()" ng-controller="todoCtrl">
    <input type="text" ng-model="todoInput" size="50" placeholder="Add New">
    <input type="submit" value="Add New"></p>
	</form>
	</p><br>
    <button class="close-btn">Close</button>
</div>

<div class="overlay-bg">
</div> 
<div class="overlay-content popup2">
	<form name="myform" action="edit.jsp">
		
		
		
		
	<button class="close-btn">Close</button>
</div>

<p><button ng-click="remove()">Remove marked</button></p>
</center>
</body>
</html>

	