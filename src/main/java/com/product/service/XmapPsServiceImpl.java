package com.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.product.dao.XmapPsDAO;
import com.product.model.XMAP_Product_Supplier;

@Service
public class XmapPsServiceImpl implements XmapPsService {

	@Autowired
	private XmapPsDAO xpsdao;	

	public void addXmapPs(XMAP_Product_Supplier xps) {
		xpsdao.addXmapPs(xps);
	}

	public List<XMAP_Product_Supplier> displayXmapPs() {	
		return xpsdao.displayXmapPs();
	}

	public XMAP_Product_Supplier getXmapPsById(String psid) {		
		return xpsdao.getXmapPsById(psid);
	}

}
