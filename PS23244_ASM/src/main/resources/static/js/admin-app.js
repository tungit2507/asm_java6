app = angular.module("app", ["ngRoute"]);

app.config(function($routeProvider) {
	$routeProvider
		.when("/account", {
			templateUrl: "/admin/indexaccount.html",
			controller: "account-ctrl"
		})
		.when("/category", {
			templateUrl: "/admin/indexcategory.html",
			controller: "category-ctrl"
		})
		.when("/product", {
			templateUrl: "/admin/indexproduct.html",
			controller: "product-ctrl"
		})
			.when("/order", {
			templateUrl: "/admin/orderlist.html",
			controller: "order-ctrl"
		})
			.when("/report-category", {
			templateUrl: "/admin/reportcategory.html",
			controller: "report-category_ctrl"
		})
		.when("/report-date", {
			templateUrl: "/admin/reportorderbydate.html",
			controller: "report-date_ctrl"
		})
		.otherwise({
			templateUrl: "/admin/menu/section.html"
		})
});