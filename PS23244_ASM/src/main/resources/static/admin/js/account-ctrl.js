app.controller("account-ctrl", function($scope, $http){
	$scope.initialize = function(){
		$http.get("/rest/accounts").then(resp => {
			$scope.items = resp.data;
		})
	}
	
	$scope.reset = function(){
		$scope.form = {}
	}
	
	$scope.edit = function(item){
		$scope.form = angular.copy(item);
		$(".nav-tabs a:eq(0)").tab("show");
	}
	$scope.click = function(){		
		$(".nav-tabs a:eq(0)").tab("show");
	}
	$scope.listClick = function(){	
		$(".nav-tabs a:eq(1)").tab("show");
	}
	$scope.create = function(){
		var item = angular.copy($scope.form);
		$http.post(`/rest/accounts`, item).then(resp => {
			$scope.items.push(resp.data);
			$scope.reset();
			alert("Thêm mới tài khoản thành công!");
		}).catch(error => {
			alert("Lỗi thêm mới tài khoản!");
			console.log("Error", error);
		});
	}

	$scope.update = function(){
		var item = angular.copy($scope.form);
		$http.put(`/rest/accounts/${item.username}`, item).then(resp => {
			var index = $scope.items.findIndex(p => p.username == item.username);
			$scope.items[index] = item;
			alert("Cập nhật tài khoản thành công!");
		})
		.catch(error => {
			alert("Lỗi cập nhật sản phẩm!");
			console.log("Error", error);
		});
	}

	$scope.delete = function(item){
		if(confirm("Bạn muốn xóa tài khoản này?")){
			$http.delete(`/rest/accounts/${item.username}`).then(resp => {
				var index = $scope.items.findIndex(p => p.username == item.username);
				$scope.items.splice(index, 1);
				$scope.reset();
				alert("Xóa tài khoản thành công!");
			}).catch(error => {
				alert("Lỗi xóa tài khoản!");
				console.log("Error", error);
			})
		}
	}
	
	$scope.imageChanged = function(files){
	
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

	$scope.initialize();
});