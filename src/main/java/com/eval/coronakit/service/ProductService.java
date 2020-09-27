package com.eval.coronakit.service;

import java.util.List;

import com.eval.coronakit.entity.ProductMaster;
import com.eval.coronakit.exception.CoronaKitException;

public interface ProductService {

	public ProductMaster addNewProduct(ProductMaster product) throws CoronaKitException;
	public List<ProductMaster> getAllProducts();
	public boolean deleteProduct(int productId)throws CoronaKitException;
	public ProductMaster getProductById(int productId);
}
