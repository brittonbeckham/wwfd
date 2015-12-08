var app = angular.module('contributeApp', ['ngRoute', 'ngSanitize']);

app.config([
	'$routeProvider', function ($routeProvider) {
	    $routeProvider
			.when('/founders', { templateUrl: 'views/founders.htm' })
			.when('/founder/:founderId', { templateUrl: 'views/founder.htm' })
			.when('/terms/:word', { templateUrl: 'views/terms.htm' })
			.when('/quote/:quoteId', { templateUrl: 'views/quote.htm' })
			.when('/search/text/:searchString', { templateUrl: 'views/results.htm' })
			.when('/search/keyword/:keyword', { templateUrl: 'views/results.htm' });
	}
]);

app.controller('appController', ['dataService', '$scope', '$location', function (wwfdData, $scope, $location) {

    init();

    function init() {
        $scope.subscribed = false;
        //wwfdData.getAllFounders(loadFounders);
    }

    $scope.location = $location;
    $scope.clearFounderSearch = function ($event) {

        if ($event.keyCode === 27) {
            $scope.founderSearchText = "";
            $scope.founders = null;
            //wwfdData.getAllFounders(loadFounders);
        }
    }

    $scope.subscribe = function () {
        wwfdData.subscribeToDailyQuotes($scope.subscriberEmail,
			//success
			function () {
			    $scope.subscribed = true;

			}
		);
    }

    $scope.searchFounders = function () {
        //only if has 2 or more characters
        if ($scope.founderSearchText.length > 1) {
            wwfdData.searchFounders($scope.founderSearchText, loadFounders);
        }
        else if ($scope.founderSearchText.length <= 1)
            $scope.founders = null;
    }

    $scope.searchAutoComplete = function () {

    }

    $scope.performSearch = function ($event) {

        if ($event.keyCode == 13) {
            var search = encodeURIComponent($scope.quoteSearchText);
            $location.path('/search/text/' + search);

        }
    }

    function loadFounders(data) {
        $scope.founders = data;
        $('#founder-search-results').css('height', (24 * $scope.founders.length) + 8);
    }

    return {};
}]);

app.controller('contribute', ['dataService', '$scope', '$routeParams', function (wwfdData, $scope, $routeParams) {


    return {};
}]);

