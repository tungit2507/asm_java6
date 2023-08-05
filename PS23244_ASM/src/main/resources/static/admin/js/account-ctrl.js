app.controller("account-ctrl", function($scope, $http){
	$scope.initialize = function(){
		$http.get("/rest/accounts").then(resp => {
			$scope.items = resp.data;
		})
	}
	
	$scope.reset = function(){

	}

	$scope.edit = function(item){

	}

	$scope.create = function(){

	}

	$scope.update = function(){

	}

	$scope.delete = function(item){

	}
	
	$scope.imageChanged = function(files){
	
	}

	$scope.initialize();

	$scope.pager = {
		page: 0,
		size: 10,
		get items(){
			if(this.page < 0){
				this.last();
			}
			if(this.page >= this.count){
				this.first();
			}
			var start = this.page*this.size;
			return $scope.items.slice(start, start + this.size)
		},
		get count(){
			return Math.ceil(1.0 * $scope.items.length / this.size);
		},
		first(){
			this.page = 0;
		},
		last(){
			this.page = this.count - 1;
		},
		next(){
			this.page++;
		},
		prev(){
			this.page--;
		}
	}
});