app.controller('UserController',function($scope,UserService,$location,$rootScope){
	$scope.message=''
	$scope.registerUser=function(){
		UserService.registerUser($scope.userdetails)
		.then(function(response){
			console.log(response.status);
			console.log(response.data)
			$scope.message="Registered Successfully... Please login now"
			$location.path('/login')
		},function(response){
			console.log(response.status)
			console.log(response.data)
			$scope.message=response.data.message
			$location.path('/register')
		})
	}
	
	$scope.login=function(){
		UserService.login($scope.userdetails)
		.then(function(response){
			console.log(response.status)
			$scope.user=response.data
			$rootScope.currentUser=response.data;
			$location.path('/home')
		},function(response){
			console.log(response.status)
			console.log("error : "   + response.data)
			$scope.message=response.data.message
			$location.path('/login')
		})
	}
	
})