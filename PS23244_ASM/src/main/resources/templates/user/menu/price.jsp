<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <form action="/home/price" method="get">
<div class="d-flex  dropdown mt-3" style="margin-left: 1253px">
            <button class="btn btn-light dropdown-toggle" type="button" id="priceDropdown" data-bs-toggle="dropdown"
                aria-expanded="false">
                Chọn mức giá
            </button>
            <ul class="dropdown-menu" aria-labelledby="priceDropdown" style="width: 200px; height: 80px">
                <li>
                    <div id="slider-range" style="width: 150px"></div>
                    <div class="d-flex p het-1 justify-content-center">
                        <input class="me-5" id="price-min" name="min" value="${param.min}" type="text" readonly style="width: 50px" >
                        <input id="price-max" name="max" value="${param.max}" type="text" readonly style="width: 50px">
                    </div>
                </li>
                
            </ul>
        </div>
</form> 