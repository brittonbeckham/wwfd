var app = angular.module('wwfdApp', ['ngRoute', 'ngSanitize']);

app.config([
	'$routeProvider', function ($routeProvider) {
		$routeProvider
			.when('/founder/:founderId', { templateUrl: 'views/founder.html' })
			.when('/search/:searchString', { templateUrl: 'views/results.html' });
	}
]);

app.controller('appController', ['dataService', '$scope', '$location', function (wwfdData, $scope, $location) {

	init();

	function init() {
		wwfdData.getAllFounders(loadFounders);
	}

	$scope.clearFounderSearch = function ($event) {

		if ($event.keyCode === 27) {
			$scope.founderSearchText = "";
			wwfdData.getAllFounders(loadFounders);
		}
	}

	$scope.searchFounders = function () {
		wwfdData.searchFounders($scope.founderSearchText, loadFounders);
	}

	$scope.searchAutoComplete = function () {

	}

	$scope.performSearch = function ($event) {

		if ($event.keyCode == 13) {
			var search = encodeURIComponent($scope.quoteSearchText);
			$location.path('/search/' + search);

		}
	}

	function loadFounders(data) {
		$scope.founders = data;
	}

	function loadQuotes(data) {

	}

	return {};
}]);

app.controller('founderController', ['dataService', '$scope', '$routeParams', function (wwfdData, $scope, $routeParams) {

	init();

	function init() {
		wwfdData.getFounderById($routeParams.founderId, loadFounder);
		wwfdData.getFounderQuotesById($routeParams.founderId, loadQuotes);
	}

	function loadFounder(data) {
		$scope.founder = data;
	}

	function loadQuotes(data) {
		$scope.quotes = data;

		for (var i = 0; i < $scope.quotes.length; i++)
			$scope.quotes[i].Keywords = $scope.quotes[i].Keywords.split(', ');
	}


	return {};
}]);

app.controller('resultsController', ['dataService', '$scope', '$routeParams', '$compile', '$sce', function (wwfdData, $scope, $routeParams, $compile, $sce) {

	init();

	function init() {
		if ($routeParams.searchString != null) {
			wwfdData.searchQuotesByText($routeParams.searchString, loadQuotes);
			$scope.searchString = $routeParams.searchString;
		}
	}

	function loadQuotes(data) {
		$scope.quotes = data;

		for (var i = 0; i < $scope.quotes.length; i++) {

			var searchMask = $scope.searchString;
			var regEx = new RegExp(searchMask, "ig");
			var replaceMask = "<span class='highlight'>" + $scope.searchString + "</span>";

			//searchMatch = $sce.trustAsHtml(searchMatch);

			$scope.quotes[i].QuoteText = $scope.quotes[i].QuoteText.replace(regEx, $sce.trustAsHtml(replaceMask));
			$scope.quotes[i].Keywords = $scope.quotes[i].Keywords.split(', ');
		}
	}


	return {};
}]);



app.service('dataService', ['$http', function ($http) {

	var baseurl = "http://localhost:30000/";

	function get(url, callback, error) {
		$http.get(baseurl + url)
			.success(function (data) {
				callback(data);
			})
			.error(function (data) {
				error(data);
			});
	}

	return {
		getAllFounders: function (callback) {
			get('founder/all/quotecount', callback);
		},
		searchFounders: function (searchString, callback) {
			get('founder/search/' + searchString + '/quotecount', callback);
		},
		getFounderById: function (id, callback) {
			get('founder/' + id, callback);
		},
		getFounderQuotesById: function (id, callback) {
			get('quote/founder/' + id, callback);
		},
		searchQuotesByText: function (text, callback) {
			get('quote/search/text/' + text, callback);
		}
	}

}]);
