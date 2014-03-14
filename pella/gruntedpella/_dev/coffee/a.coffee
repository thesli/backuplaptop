app = angular.module("pella",[])

app.controller(
	"inputCtrl",
	($scope)->
		s = $scope
		s.abc = "what the fuck"
	)