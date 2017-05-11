package com.product.dao;

import java.util.List;

import com.product.model.XMAP_Product_Supplier;

public interface XmapPsDAO {

	public abstract void addXmapPs(XMAP_Product_Supplier xps);
	public abstract List<XMAP_Product_Supplier> displayXmapPs();
	public abstract XMAP_Product_Supplier getXmapPsById(String psid);
}
