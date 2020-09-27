package com.eval.coronakit.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eval.coronakit.dao.ProductMasterRepository;
import com.eval.coronakit.entity.ProductMaster;
import com.eval.coronakit.exception.CoronaKitException;


@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductMasterRepository repository;
	
	@Override
	@Transactional
	public ProductMaster addNewProduct(ProductMaster product) throws CoronaKitException {
		if (product!=null) {	
			if(repository.existsByProductName(product.getProductName())) {
				throw new CoronaKitException("Product Name already exists");
			}
			repository.save(product);
		}
		return product;
	}

	@Override
	public List<ProductMaster> getAllProducts() {
		// TODO Auto-generated method stub
		return repository.findAll();
	}

	@Override
	@Transactional
	public boolean deleteProduct(int productId) throws CoronaKitException {
		System.out.println(repository.existsById(productId));
		if(!repository.existsById(productId)) {
			
			throw new CoronaKitException("Product id doesn't exists");
		}
		repository.deleteById(productId);
		
		return true;
	}

	@Override
	public ProductMaster getProductById(int productId) {
		// TODO Auto-generated method stub
		return repository.findById(productId).orElse(null);
	}

}
