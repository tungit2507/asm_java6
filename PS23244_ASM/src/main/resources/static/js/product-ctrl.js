app.controller("product-ctrl", function($scope, $http) {
	$scope.initialize = function() {
		$http.get("/rest/categories").then(resp => {
			$scope.categories = resp.data;
		});

		$http.get("/rest/products").then(resp => {
			$scope.items = resp.data;
		})
	}

	$scope.reset = function() {
		$scope.form = {}
	}
	
	
	
$scope.edit = function(item) {
    $scope.form = angular.copy(item);
    $scope.form.createDate = new Date(item.createDate);
    $scope.form.available = item.available;
    
    if ($scope.form.category) {
        var categoryId = item.category.id;
        $scope.form.category.id = categoryId;
    }


    $(".nav-tabs a:eq(1)").tab("show");
};






	$scope.listClick = function() {
		$(".nav-tabs a:eq(0)").tab("show");
	}
	$scope.click = function() {
		$(".nav-tabs a:eq(1)").tab("show");
	}
	$scope.create = function() {
		var item = angular.copy($scope.form);
		$http.post(`/rest/products`, item).then(resp => {
			$scope.items.push(resp.data);
			
			alert("Thêm mới sản phẩm thành công!");
		}).catch(error => {
			alert("Lỗi thêm mới sản phẩm!");
			console.log("Error", error);
		});
	}

	$scope.update = function() {
    var item = angular.copy($scope.form);
    $http.put(`/rest/products/${item.id}`, item).then(resp => {
        var index = $scope.items.findIndex(p => p.id == item.id);
        $scope.items[index] = item;
        alert("Cập nhật sản phẩm thành công!");
    }).catch(error => {
        alert("Lỗi cập nhật sản phẩm!");
        console.log("Error", error);
    });
};


	$scope.delete = function(item) {
		if (confirm("Bạn muốn xóa sản phẩm này?")) {
			$http.delete(`/rest/produts/${item.id}`).then(resp => {
				var index = $scope.items.findIndex(p => p.id == item.id);
				$scope.items.splice(index, 1);
				$scope.reset();
				alert("Xóa sản phẩm thành công!");
			}).catch(error => {
				alert("Lỗi xóa sản phẩm!");
				console.log("Error", error);
			})
		}
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