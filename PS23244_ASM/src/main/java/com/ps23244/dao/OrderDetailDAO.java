package com.ps23244.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.ps23244.entity.OrderDetail;
import com.ps23244.entity.RevenueReport;



public interface OrderDetailDAO  extends JpaRepository<OrderDetail, Long>{
	
	@Query("SELECT o FROM OrderDetail o WHERE o.order.id = ?1")
	Page<OrderDetail> findByOrder(Long id, Pageable pageable);
	
	
	
	
	@Query("SELECT o FROM OrderDetail o WHERE o.order.id = ?1")
	List<OrderDetail> findByOrderID(Long orderid);
	
	@Query("Select new RevenueReport(d.product.category, sum(d.price*d.quantity), sum(d.quantity))"
			+ " from OrderDetail d Group By d.product.category")
	List<RevenueReport> getRevenueByCategory();
}
