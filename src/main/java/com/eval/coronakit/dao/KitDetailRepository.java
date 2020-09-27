package com.eval.coronakit.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.eval.coronakit.entity.KitDetail;

@Repository
public interface KitDetailRepository extends JpaRepository<KitDetail, Integer>{
	
	boolean existsByCoronaKitId(int coronaKitId);
	
	@Query("SELECT CK FROM KitDetail CK WHERE CK.coronaKitId=:coronaKitId")
	List<KitDetail> findAllCoronaKitId(int coronaKitId);

}
