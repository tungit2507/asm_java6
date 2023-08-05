app = angular.module("app", ["ngRoute"]);

app.config(function($routeProvider) {
	$routeProvider
		.when("/account", {
			templateUrl: "/admin/accountlist.html",
			controller: "account-ctrl"
		})
		.when("/accountctrl", {
			templateUrl: "/admin/accountcontroller.html",
			controller: "account-ctrl"
		})
		.when("/category", {
			templateUrl: "/admin/categorylist.html",
			controller: "category-ctrl"
		})
		.when("/categoryctrl", {
			templateUrl: "/admin/categorycontroller.html",
			controller: "category-ctrl"
		})
			.when("/product", {
			templateUrl: "/admin/productlist.html",
			controller: "product-ctrl"
		})
		.when("/productctrl", {
			templateUrl: "/admin/productcontroller.html",
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