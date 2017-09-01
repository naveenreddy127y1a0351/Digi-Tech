app.factory('UserService',function($http){
	var userService={}
	var BASE_URL="http://localhost:8089/projectchat"
	
	userService.registerUser=function(userdetails){
		return $http.post(BASE_URL+"/register",userdetails);
	}
	
	userService.login=function(userdetails){
		return $http.post(BASE_URL + "/login",userdetails)
	}
	
	return userService;
})