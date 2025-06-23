package com.java.jsf.dao;

import com.java.jsf.model.Asset;

public interface AssetDao {

	String addAsset(Asset asset);

	Asset searchAssetById(int assetId);

	String assignAssetToEmployee(int assetId, int empId);

	String approveAssetByAdmin(int assetId);

}
