
<html>
<head>
<title>Angular JS Views</title>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js">
	
</script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular-route.min.js">
	
</script>
</head>
<body>
	<h2>Welcome to Middle Earth</h2>
	<div data-ng-app="middleapp">
		<p>
			<a href="#light">Gandalf the White</a>
		</p>
		<p>
			<a href="#dark">Witch King of Angnamar</a>
		</p>
		<div data-ng-view></div>
		<script type="text/ng-template" id="gondor.htm">
			<h2> City of King </h2>
			{{message}}
		</script>
		<script type="text/ng-template" id="mordor.htm">
			<h2> City of Dead </h2>
			{{message}}
		</script>
	</div>
	<script>
		var mainApp = angular.module("middleapp", [ 'ngRoute' ]);
		mainApp.config([ '$routeProvider', function($routeProvider) {
			$routeProvider.when('/light', {
				templateUrl : 'gondor.htm',
				controller : 'minastirith'
			}).when('/dark', {
				templateUrl : 'mordor.htm',
				controller : 'minasmorgul'
			}).otherwise({
				redirectTo : '/light'
			});
		} ]);
		mainApp.controller('minastirith', function($scope) {
			$scope.message = "WELCOME TO GONDOR";
		});
		mainApp.controller('minasmorgul', function($scope) {
			$scope.message = "WELCOME TO MORDOR";
		});
	</script>
</body>
</html>


<!-- <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<script type="text/javascript" src="city_state.js"></script>
<title>Region > Country > Division</title>
</head>
<body>
<div id="widget">
<form>
<table>
	<tr>
		<td>Select Region</td>
		<td id="regions">
				<script>alert("hello");setRegions('Regions');</script></td>
	</tr>
	<tr>
		<td>Select Country</td>
		<td id="country" ></td>
	</tr>
	<tr>
		<td>Select State</td>
		<td id="city_state" name="city_state" size="1" disabled="disabled" onchange="print_city_state(country,this)"></td>
	</tr>
</table> -->

<!-- Region&raquo; 
<div id="Regions"></div>
<script>
	/* alert("hello");
	setRegions('Regions'); */	
</script>
<select onchange="set_country(this,country,city_state)" size="1" name="region">
<option value="" selected="selected">SELECT REGION</option>
<option value=""></option>
<script type="text/javascript">
setRegions(this);
</script>
</select>
Country&raquo; <select name="country" size="1" disabled="disabled" onchange="set_city_state(this,city_state)"></select>
City/State&raquo; <select name="city_state" size="1" disabled="disabled" onchange="print_city_state(country,this)"></select> -->
</form>
<!-- <div id="txtregion"></div>
<div id="txtplacename"></div> -->
</div>

<!-- <script>

	alert("hello");
	setRegions('Regions');
	
	function setRegions()
	{
		document.write(' <select onchange="set_country(this,country,city_state)" size="1" name="region"><option value="" selected="selected">SELECT REGION</option> ');
		for (region in countries)
			document.write('<option value="' + region + '">' + region + '</option>');
		document.write(' </select> ');
	}		
</script> -->


<!--  <script>

	alert("hello");
	setRegions('regions');
	
	function setRegions()
	{
		document.write(' <select onchange="set_country(this,country,city_state)" size="1" name="region"><option value="" selected="selected">SELECT REGION</option> ');
		for (region in countries)
		document.write('<option value="' + region + '">' + region + '</option>');
		document.write(' </select> ');
	}	
	function set_country(oRegionSel, oCountrySel, oCity_StateSel)
	{
		alert(oRegionSel.value);
		console.log(countries[oRegionSel.value]);
		var countryArr=countries[oRegionSel.value].split('|');
		console.log(countryArr);
		for(country in countryArr)
		{
			console.log(countryArr[country]+"\n");
		}
		
		document.getElementById("country").innerHTML='<select onchange="set_country(this,country,city_state)" size="1" name="region">'; 
		/* <option value="" selected="selected">SELECT COUNTRY</option> */
		for(country in countryArr)
			{
				document.getElementById("country").innerHTML+='<option value="' + countryArr[country] + '">' + countryArr[country] + '</option>';							
			}
		document.getElementById("country").innerHTML+='</select>';
		alert(document.getElementById("country").innerHTML); 
		/* document.getElementById("country").innerHTML='pigshit'; */
			/* var region=oRegionSel.value;
		var countryArr=countries[region],split('|');
		for(country in countryArr)
			{
				console.log(country);
			} */
		
		/* oCountrySel.length = 0;
		oCity_StateSel.length = 0;
		var region = oRegionSel.options[oRegionSel.selectedIndex].text;
		if (countries[region])
		{
			oCountrySel.disabled = false;
			oCity_StateSel.disabled = true;
			oCountrySel.options[0] = new Option('SELECT COUNTRY','');
			countryArr = countries[region].split('|');
			for (var i = 0; i < countryArr.length; i++)
				oCountrySel.options[i + 1] = new Option(countryArr[i], countryArr[i]);
			document.getElementById('country').innerHTML = region;
			document.getElementById('city_state').innerHTML = '';
		}
		else oCountrySel.disabled = true; */
	}
	
	function set_city_state(oCountrySel, oCity_StateSel)
	{
		var city_stateArr;
		oCity_StateSel.length = 0;
		var country = oCountrySel.options[oCountrySel.selectedIndex].text;
		if (city_states[country])
		{
			oCity_StateSel.disabled = false;
			oCity_StateSel.options[0] = new Option('SELECT NEAREST DIVISION','');
			city_stateArr = city_states[country].split('|');
			for (var i = 0; i < city_stateArr.length; i++)
				oCity_StateSel.options[i+1] = new Option(city_stateArr[i],city_stateArr[i]);
			document.getElementById('txtplacename').innerHTML = country;
		}
		else oCity_StateSel.disabled = true;
	}
	
	function print_city_state(oCountrySel, oCity_StateSel)
	{
		var country = oCountrySel.options[oCountrySel.selectedIndex].text;
		var city_state = oCity_StateSel.options[oCity_StateSel.selectedIndex].text;
		if (city_state && city_states[country].indexOf(city_state) != -1)
			document.getElementById('txtplacename').innerHTML = city_state + ', ' + country;
		else document.getElementById('txtplacename').innerHTML = country;
	}
</script> 

</body>
</html>
 -->
<!-- <html>
<head>
<title>Angular JS Form Validation Part 2</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.0-beta.17/angular.min.js">
	
</script>
<style>
table, th, td {
	border: 1px solid grey;
	border-collapse: collapse;
	padding: 5px;
}

table tr:nth-child(odd) {
	background-color: #f2f2f2;
}

table tr:nth-child(even) {
	background-color: #ffffff;
}
</style>
</head>
<body ng-app="formExample">
	<h2>Shrek Application</h2>
	<div ng-controller="ExampleController">
		<form name="form" class="css-form" novalidate>
			Name: <input type="text" ng-model="user.name" ng-model-options="{updateOn:'blur'}" name="uName"
				required="" /> <br />
			<div ng-show="form.$submitted || form.uName.$touched">
				<div ng-show="form.uName.$error.required">Tell us your name.</div>
			</div>

			E-mail: <input type="email" ng-model="user.email" ng-model-options="{updateOn:'blur'}" name="uEmail"
				required="" /> <br />
			<div ng-show="form.$submitted || form.uEmail.$touched">
				<span ng-show="form.uEmail.$error.required">Tell us your
					email.</span> <span ng-show="form.uEmail.$error.email">This is not
					a valid email.</span>
			</div>

			Gender: <input type="radio" ng-model="user.gender" ng-model-options="{updateOn:'blur'}" value="male" />male
			<input type="radio" ng-model="user.gender" ng-model-options="{updateOn:'blur'}" value="female" />female <br />
			<input type="checkbox" ng-model="user.agree" name="userAgree"
				required="" /> I agree: <input ng-show="user.agree" type="text"
				ng-model="user.agreeSign" required="" /> <br />
			<div ng-show="form.$submitted || form.userAgree.$touched">
				<div ng-show="!user.agree || !user.agreeSign">Please agree and
					sign.</div>
			</div>

			<input type="button" ng-click="reset(form)" value="Reset" /> <input
				type="submit" ng-click="update(user)" value="Save" />
		</form>
	</div>
	<script>
		angular.module('formExample', []).controller('ExampleController',
				[ '$scope', function($scope) {
					$scope.master = {};

					$scope.update = function(user) {
						$scope.master = angular.copy(user);
					};

					$scope.reset = function(form) {
						if (form) {
							form.$setPristine();
							form.$setUntouched();
						}
						$scope.user = angular.copy($scope.master);
					};

					$scope.reset();
				} ]);
	</script>
</body>
</html> -->

<!-- <html>
<head>
<script
	src= "http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js">
</script>
<script 
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular-route.min.js">
</script>
<title>Angular JS Forms</title>
</head>
<body>
	<h2>AngularJS Sample Application</h2>
	<div ng-app="mainApp" ng-controller="CalcController">
		<p>Enter a number: <input type="number" ng-model="number" />
		<button ng-click="square()">X<sup>2</sup></button>
		<p>Result: {{result}}</p>
	</div>
	<script>
		var mainApp = angular.module("mainApp", []);
		mainApp.factory('MathService', function() {
			var factory = {};
			factory.multiply = function(a, b) {
				return a * b;
			}
			return factory;
		});
		mainApp.service('CalcService', function(MathService){
			this.square = function(a) {
				return MathService.multiply(a,a);
			}
		});
		mainApp.controller('CalcController', function($scope, CalcService) {
			$scope.square = function() {
				$scope.result = CalcService.square($scope.number);
			}
		});
	</script>
</body>
</html> -->

<!-- <html>
<head>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js">
	
</script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular-route.min.js">
	
</script>
<title>Angular JS Scope Control and Branching</title>
</head>
<body>
	<h2>AngularJS Sample Application</h2>
	<div ng-app="mainApp" ng-controller="shapeController">
		<p>
			{{message}} <br /> {{type}}
		</p>

		<div ng-controller="circleController">
			<p>
				{{message}} <br /> {{type}}
			</p>
		</div>

		<div ng-controller="squareController">
			<p>
				{{message}} <br /> {{type}}
			</p>
		</div>

		<p>
			{{message}} <br /> {{type}}
		</p>
	</div>
	<script>
		var mainApp = angular.module("mainApp", []);
		mainApp.controller("shapeController", function($scope) {
			$scope.message = "In shape controller";
			$scope.type = "Shape";
		});
		mainApp.controller("circleController", function($scope) {
			$scope.message = "In circle controller";
			$scope.type = "Circle";
		});
		mainApp.controller("squareController", function($scope) {
			$scope.message = "In square controller";
			$scope.type = "Square";
		});
	</script>
</body>
</html> -->



<!-- <html>
<head>
<title>Angular JS request handling</title>
<script
	src= "http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js">
</script>
<style>
	table, th, td {
		border: 1px solid grey;
		border-collapse: collapse;
		padding: 5px;
	}
	
	table tr:nth-child(odd) {
		background-color: #f2f2f2;
	}
	
	table tr:nth-child(even) {
		background-color: #ffffff;		
	}
</style>
</head>
<body>
	<h2>Shrek Application</h2>
	<div data-ng-app="shrekapp" data-ng-controller="shrekController">
		<table>
			<tr>
				<th>Name</th>
				<th>Roll No</th>
				<th>Percentage</th>
			</tr>
			<tr data-ng-repeat="student in students">
				<td>{{ student.Name }}</td>
				<td>{{ student.RollNo }}</td>
				<td>{{ student.Percentage }}</td>
			</tr>
		</table>
	</div>
	<script>
		angular.module("shrekapp",[]).controller("shrekController",function($scope, $http) {
				/* $scope = {}; */
				/* $http = {}; */
				var url = "http://localhost:9090/Angulartry/data.txt";
				$http.get(url).success(function(response) {
					/* alert("hello"); */
					$scope.students = response; });
		});
	</script>
	<script>
			function shrekController($scope,$http) {
  							$http.get("http://localhost:9090/Angulartry/data.txt").success(function(response) {
  								$scope.students = response;
  								});
			}
	</script>
</body>
</html> -->

<!-- <html>
<head>
<title>Angular JS Form Validation</title>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.0-beta.17/angular.min.js">
	</script>
	<style>
		table, th , td {
		border: 1px solid grey;
		border-collapse: collapse;
		padding: 5px;
		}
		table tr:nth-child(odd) {
		background-color: #f2f2f2;
		}
		table tr:nth-child(even) {
		background-color: #ffffff;
		}
	</style>
</head>
<body>
	<h2>Shrek Application</h2>
	<div data-ng-app="shrekapp" data-ng-controller="shrekController">
	<form name="studentForm" novalidate>
		<table style="border:0px">
		<tr>
			<td>Enter first name:</td>
			<td><input name="firstname" type="text" data-ng-model="firstName" required>
			<span style="color:red" data-ng-show="studentForm.firstname.$dirty && studentForm.firstname.$invalid">
				<span data-ng-show="studentForm.firstname.$error.required">First Name is required.</span>
			</span>
			</td>
		</tr>
		<tr>
			<td>Enter last name: </td><td><input name="lastname" type="text" data-ng-model="lastName" required>
			<span style="color:red" data-ng-show="studentForm.lastname.$dirty && studentForm.lastname.$invalid">
				<span data-ng-show="studentForm.lastname.$error.required">Last Name is required.</span>
			</span>
			</td>
		</tr>
		<tr>
			<td>Email: </td><td><input name="email" type="email" data-ng-model="email" length="100" required>
			<span style="color:red" data-ng-show="studentForm.email.$dirty && studentForm.email.$invalid">
				<span data-ng-show="studentForm.email.$error.required">Email is required.</span>
				<span data-ng-show="studentForm.email.$error.email">Invalid email address.</span>
			</span>
			</td>
		</tr>
		<tr>
			<td><button data-ng-click="reset()">Reset</button></td>
			<td><button data-ng-disabled="studentForm.firstname.$dirty && studentForm.firstname.$invalid ||
			studentForm.lastname.$dirty && studentForm.lastname.$invalid ||
			studentForm.email.$dirty && studentForm.email.$invalid" data-ng-click="submit()"> Submit</button>
			</td>
		</tr>
		</table>
	</form>
	</div>
	<script>
		angular.module("shrekapp",[]).controller("shrekController",function($scope) {
			$scope = {};
			$scope.reset = function(){
				$scope.firstName = "SHREY";
				$scope.lastName = "MATHUR";
				$scope.email = "shreymathur93@gmail.com";
			};	
			/* $scope.reset(); */
		});
	</script>
</body>
</html> -->

<!-- 
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.0-beta.17/angular.min.js">
</script>
<title>Angular JS Table</title>
<style>
table, th, td {
	border: 1px solid grey;
	border-collapse: collapse;
	padding: 5px;
}

table tr:nth-child(odd) {
	background-color: #f2f2f2;
}

table tr:nth-child(even) {
	background-color: #ffffff;
}
</style>
</head>
<body>
	<h2>Shrek Sample Application</h2>
	<div data-ng-app="myapp" data-ng-controller="studentController">
		<table style="border:0px">
			<tr>
				<td>Enter first name:</td>
				<td><input type="text" data-ng-model="student.firstName"></td>
			</tr>
			<tr>
				<td>Enter last name:</td>
				<td><input type="text" data-ng-model="student.lastName"></td>
			</tr>
			<tr>
				<td>Name:</td>
				<td>{{student.fullName()}}</td>
			</tr>
			<tr>
				<td>Subject:</td>
				<td>
					<table>
						<tr>
							<th>Name</th>
							<th>Marks</th>
						</tr>
						<tr data-ng-repeat="subject in student.subjects">
							<td>{{ subject.name }}</td>
							<td>{{ subject.marks }}</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>
	<script>		
		angular.module("myapp", []).controller("studentController",
				function($scope) {
					$scope.student = {};
					$scope.student = {
						firstName : "Shrey",
						lastName : "Mathur",
						fees : 500,
						fullName : function() {
							var studentObject;
							studentObject = $scope.student;
							return studentObject.firstName + " "
									+ studentObject.lastName;
						},
						subjects : [ {
							name : 'Physics',
							marks : '70'
						}, {
							name : 'Chemistry',
							marks : 80
						}, {
							name : 'Math',
							marks : '65'
						}, {
							name : 'English',
							marks : '75'
						}, {
							name : 'Hindi',
							marks : '67'
						} ]
					}
				});
	</script>	
</body>
</html>
-->

<!--  
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.0-beta.17/angular.min.js"></script>
<meta http-equiv="refresh" content="0;url=http://localhost:9090/shrek/student"/>
<title>Shrek Angular JS</title>
</head>

<body>
	<h2>AngularJS Sample Application</h2>
	<div data-ng-app="myapp" data-ng-controller="studentController">
		Enter first name: <input type="text" data-ng-model="student.firstName"><br>
		<br> Enter last name: <input type="text" data-ng-model="student.lastName"><br>
		 <br> You are entering: {{student.fullName()}}
	</div>
	<script>
	/* alert(student.firstname);
	alert("hello"); */
		angular.module("myapp",[]).controller("studentController",function($scope){
							$scope.student={};
							$scope.student = {
									firstName : "SHREY",
									lastName : "MATHUR",
									fullName : function() {
										var studentObject;
										studentObject = $scope.student;
										return studentObject.firstName + " "+ studentObject.lastName;
											}
							}
			}
		);
	</script>
	<script
		src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.15/angular.min.js">
	</script>
</body>

<body data-ng-app="shrekapp">
	<div data-ng-controller="ShrekController">
		<h2>Welcome {{helloShrek.message}} ,Lord of Nazguls to Minas
			Morgul</h2>
	</div>
	<script>
		angular.module("shrekapp", []).controller("ShrekController",
				function($scope) {
					$scope.helloShrek = {};
					$scope.helloShrek.message = "SHREK";
				});
	</script>
</body>
<body>
<div data-ng-app="" data-ng-init="firstName='Shrek'">

<p>The name is <span data-ng-bind="firstName"></span></p>

</div>
</body>

 <<!-- /html> -->
 
 
 
	<!-- $scope.registerValidation= function(registration){		
		
		$scope.registerError=true;
		$scope.header=true;
		$scope.menu=true;
		$scope.register=true;
		$scope.carousel=false;
		$scope.clientpage=false;
		$scope.bimpage=false;
		$scope.bimLogin=false;
		$scope.clientLogin=false;
		$scope.displayIndices=false;
		$scope.displayRules=false;
		$scope.indexMonitor=false;
		$scope.addIndex=false;
		$scope.addStock=false;
		$scope.addRule=false;
		$scope.contactus=false;
		$scope.aboutus=false;
		
		if($scope.registration.firstname!=null && $scope.registration.lastname!=null && $scope.registration.password!=null
				&& $scope.registration.role!=null && $scope.registration.age!=null && $scope.registration.gender!=null
				&& $scope.registration.contactno!=null && $scope.registration.email!=null && $scope.registration.address!=null
				&& $scope.registration.zip!=null && $scope.registration.city!=null)
		{
			/*alert("Provided Data is submitted Succesfully");
			alert($scope.registration.firstname + " " + $scope.registration.lastname + " " + $scope.registration.password );
			alert($scope.registration.role + " " + $scope.registration.age + " " + $scope.registration.gender );
			alert($scope.registration.contactno + " " + $scope.registration.email + " " + $scope.registration.address );
			alert($scope.registration.zip + " " + $scope.registration.city );*/

			$scope.registrationlist = [];							
			var datatosend = { 
					"firstname" : $scope.registration.firstname,
					"lastname" : $scope.registration.lastname,
					"password" : $scope.registration.password,
					"role" : $scope.registration.role,
					"age" : $scope.registration.age,
					"gender" : $scope.registration.gender,
					"contactno" : $scope.registration.contactno,
					"email" : $scope.registration.email,
					"address" : $scope.registration.address,
					"zip" : $scope.registration.zip,
					"city" : $scope.registration.city				
			};					
			var url="Index/addRegistration";								
			var responsePromise = $http.post(url,datatosend);
			responsePromise.success(function(data, status, headers, config) {
				$scope.registrationlist=data;
				console.log($scope.registrationlist);
				console.log("New ID !!!");
				alert("Your new ID is "+$scope.registrationlist.registrationid);				
			});
			responsePromise.error(function(data, status, headers, config) {
				alert("Problem Occured!");				
			}); 				
		}		
	}
	
	
	$scope.registerValidation= function(registration){		

	
				$scope.registerError=true;
				$scope.header=true;
				$scope.menu=true;
				$scope.register=true;
				$scope.carousel=false;
				$scope.clientpage=false;
				$scope.bimpage=false;
				$scope.bimLogin=false;
				$scope.clientLogin=false;
				$scope.displayIndices=false;
				$scope.displayRules=false;
				$scope.indexMonitor=false;
				$scope.addIndex=false;
				$scope.addStock=false;
				$scope.addRule=false;
				$scope.contactus=false;
				$scope.aboutus=false;
				
				if($scope.registrationForm.$valid)
				{					
					$scope.registrationlist = [];							
					
					var url="Index/addRegistration";								
					var responsePromise = $http.post(url,registration);
					responsePromise.success(function(data, status, headers, config) {
						$scope.registrationlist=data;
						console.log($scope.registrationlist);
						console.log("New ID !!!");
						alert("Your new ID is "+$scope.registrationlist.registrationid);
			             });
					
					
			   responsePromise.error(function(data, status, headers, config) {
				alert("Problem Occured!");
				}); 				
		}		
	};
	
	
	
	
	-->
	
  -->