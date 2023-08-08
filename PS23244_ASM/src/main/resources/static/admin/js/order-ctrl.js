app.controller("order-ctrl", function($scope, $http) {


	$scope.initialize = function() {
		$http.get("/rest/orders/getAll").then(resp => {
			$scope.items = resp.data;
		})
	}

	$scope.confirm = function (id) {
		$http.get('/rest/orders/confirm',{ params: { id: id } })
			.then(function(response) {
				$scope.items = response.data;
			}, function(error) {
				console.error('Error confirming order:', error);
			});
	}

	$scope.delete = function(id) {
			$http.get('/rest/orders/delete', { params: { id: id } })
				.then(function(response) {
					$scope.items = response.data;
				}, function(error) {
					console.error('Error deleting order:', error);
				});
	}

	$scope.sortOrders =  function (SortBy) {
		$http.get('/rest/orders/sortOrders', { params: {sortBy : SortBy} })
			.then(function(response) {
				$scope.items = response.data;
			}, function(error) {
				console.error('Error deleting order:', error);
			});
	}



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

	$scope.initialize();
});