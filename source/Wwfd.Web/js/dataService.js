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

    function post(url, postData, callback, error) {
        $http.post(baseurl + url, postData)
			.success(function (data) {
			    callback(data);
			})
			.error(function (data) {
			    error(data);
			});
    }

    return {

        //founders
        getAllFounders: function (callback) {
            get('founder/all', callback);
        },
        searchFounders: function (searchString, callback) {
            get('founder/search/' + searchString + '/quotecount', callback);
        },
        getFounderById: function (id, callback) {
            get('founder/' + id, callback);
        },
        getFounderQuotesById: function (id, page, callback) {
            get('quote/founder/' + id + '?page='.concat(page), callback);
        },
        getFounderDocuments: function (founderId, callback) {
            get('founder/' + founderId + '/documents', callback);
        },

        //quotes
        getQuoteById: function (quoteId, callback) {
            get('quote/' + quoteId, callback);
        },
        searchQuotesByText: function (text, page, callback) {
            get('quote/search/text/' + text + '?page='.concat(page), callback);
        },
        searchQuotesByKeyword: function (keyword, page, callback) {
            get('quote/search/keyword/' + keyword + '?page='.concat(page), callback);
        },


        //daily quotes
        subscribeToDailyQuotes: function (email, callback, errorCallback) {
            post('dailyquotes/subscribe/', { email: email }, callback, errorCallback);
        },

        //other
        seperateKeywords: function (quotes) {
            for (var i = 0; i < quotes.length; i++)
                quotes[i].Keywords = quotes[i].Keywords.split(', ');

            return quotes;
        }
    }

}]);
