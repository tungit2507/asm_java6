app.controller("report-date_ctrl", function($scope, $http) {
	$scope.initialize = function() {
		$http.get("/rest/report-date").then(resp => {
			$scope.items = resp.data;
		})
	}
	$scope.firstDate = null;
	$scope.lastDate = null;
	$scope.orders = [];

	$http.get('/rest/report-date')
		.then(function(response) {
			// Handle the response from the API
			$scope.orders = response.data.orders;
			$scope.firstDate = new Date(response.data.firstDate);
			$scope.lastDate = new Date(response.data.lastDate);
		})
		.catch(function(error) {
			// Handle errors if any
			console.error(error);
		});
	$scope.reset = function() {

	}

	$scope.edit = function(item) {

	}

	$scope.create = function() {

	}

	$scope.update = function() {

	}

	$scope.delete = function(item) {

	}

	$scope.imageChanged = function(files) {

	}

	$scope.initialize();

	$scope.pager = {
		page: 0,
		size: 10,
		get items() {
			if (this.page < 0) {
				this.last();
			}
			if (this.page >= this.count) {
				this.first();
			}
			var start = this.page * this.size;
			return $scope.items.slice(start, start + this.size)
		},
		get count() {
			return Math.ceil(1.0 * $scope.items.length / this.size);
		},
		first() {
			this.page = 0;
		},
		last() {
			this.page = this.count - 1;
		},
		next() {
			this.page++;
		},
		prev() {
			this.page--;
		}
	}
});