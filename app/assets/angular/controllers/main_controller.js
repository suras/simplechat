var appModule = angular.module('chatApp', []);


appModule.controller('FormController',['$scope', function($scope) {
	
	$scope.showSignUp = true;
	$scope.showSignIn = false;
	
	$scope.viewSignIn = function()
	{
		$scope.showSignUp = false;
	$scope.showSignIn  = true;
		
	};
	
	$scope.viewSignUp = function()
	{
		$scope.showSignUp = true;
	$scope.showSignIn  = false;
		
	};
	
	
	
	
	
}]);
