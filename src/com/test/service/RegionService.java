package com.test.service;


import java.util.List;

import com.github.pagehelper.PageInfo;
import com.test.entity.Region;

public interface RegionService {
	
	
	PageInfo<Region> getAllRegion(Integer pageNum);
	
	List<Region> getRegionList();
	
	boolean deleteRegion(Integer rid);
	
	boolean addRegion(Region region);
	
}
