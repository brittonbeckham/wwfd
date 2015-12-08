var app = angular.module('wwfdApp', ['ngRoute', 'ngSanitize']);

app.config([
	'$routeProvider', function ($routeProvider) {
	    $routeProvider
			.when('/founders', { templateUrl: 'views/founders.htm' })
			.when('/founder/:founderId/:page?', { templateUrl: 'views/founder.htm' })
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

app.controller('founderController', ['dataService', '$scope', '$routeParams', function (wwfdData, $scope, $routeParams) {

    init();

    function init() {
        var page = 1;
        if ($routeParams.page)
            page = $routeParams.page;

        wwfdData.getFounderById($routeParams.founderId, loadFounder);
        wwfdData.getFounderQuotesById($routeParams.founderId, page, loadQuotes);
        wwfdData.getFounderDocuments($routeParams.founderId, loadDocs);
    }

    $scope.initTabs = function () {

        $('.nav-pills a').on('click', function (e) {
            e.preventDefault();
            $(this).tab('show');
        });

    };

    function loadFounder(data) {
        $scope.founder = data;
    }

    function loadDocs(data) {
        $scope.documents = data;

        //bio found?
        for (var i = 0; i < $scope.documents.length; i++) {
            if ($scope.documents[i].DocumentType == 2) {
                $scope.hasBiography = true;
                $scope.biography = $scope.documents[i];
                break;
            }
        }
    }

    function loadQuotes(data) {
        $scope.quotes = wwfdData.seperateKeywords(data.Results);
        $scope.resultSet = data;
    }

    $scope.getPagesNumber = function (num) {
        return new Array($scope.resultSet.TotalPages);
    }


    return {};
}]);

app.controller('quoteController', ['dataService', '$scope', '$routeParams', function (wwfdData, $scope, $routeParams) {

    init();

    function init() {
        wwfdData.getQuoteById($routeParams.quoteId, loadQuote);

    }

    function loadQuote(data) {
        $scope.quote = data;
        $scope.founder = data.Founder;
        addthis.layers.refresh();

    }

    return {};
}]);

app.controller('foundersController', ['dataService', '$scope', '$routeParams', '$location', function (wwfdData, $scope, $routeParams, $location) {

    init();

    function init() {
        wwfdData.getAllFounders(loadFounders);
    }

    function loadFounders(data) {
        $scope.founders = data;
    }

    $scope.go = function (path) {
        $location.path(path);
    };

    return {};
}]);

app.controller('resultsController', ['dataService', '$scope', '$routeParams', '$compile', '$sce', '$timeout', function (wwfdData, $scope, $routeParams, $compile, $sce, $timeout) {

    init();

    function init() {
        if ($routeParams.searchString != null) {
            wwfdData.searchQuotesByText($routeParams.searchString, loadQuotes);
            $scope.searchString = unescape($routeParams.searchString);
        }
        if ($routeParams.keyword != null) {
            wwfdData.searchQuotesByKeyword($routeParams.keyword, loadQuotes);
            $scope.keyword = $routeParams.keyword;
        }

        $scope.highlightsOn = false;
    }

    $scope.toggleHighlights = function () {
        $scope.highlightsOn = !$scope.highlightsOn;

        if ($scope.highlightsOn)
            $('span.highlight-off').addClass('highlight-on');
        else
            $('span.highlight-off').removeClass('highlight-on');
    }

    function loadQuotes(data) {
        $scope.quotes = wwfdData.seperateKeywords(data);

        //loop through quotes
        for (var i = 0; i < $scope.quotes.length; i++) {

            var searchMask = $scope.searchString;
            var words = searchMask.split(' ');

            //loop through each word
            for (var w = 0; w < words.length; w++) {
                var regEx = new RegExp(words[w], "ig");
                var replaceMask = "<span class='highlight-off'>" + words[w] + "</span>";
                $scope.quotes[i].QuoteText = $scope.quotes[i].QuoteText.replace(regEx, $sce.trustAsHtml(replaceMask));
            }
        }

        //fire up tooltip
        $timeout(function () {
            $('[data-toggle="tooltip"]').tooltip(
				{ delay: { "show": 300, "hide": 100 } });
        }, 0);

    }


    return {};
}]);

app.controller('contribute', ['dataService', '$scope', '$routeParams', function (wwfdData, $scope, $routeParams) {


    return {};
}]);

