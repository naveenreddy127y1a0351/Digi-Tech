package com.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.product.dao.VwPsDAO;
import com.product.model.Vw_Xmap_Ps;

@Service
public class VwPsServiceImpl implements VwPsService {

	
	@Autowired
	private VwPsDAO vwpsdao;
	
	public List<Vw_Xmap_Ps> getVwPs() {		
		return vwpsdao.getVwPs();
	}

	public List<Vw_Xmap_Ps> getBestVwPs() {		
		return vwpsdao.getBestVwPs();
	}
	
	public List<Vw_Xmap_Ps> getAllSuppProducts(String pid) {		
		return vwpsdao.getAllSuppProducts(pid);
	}

	

}
