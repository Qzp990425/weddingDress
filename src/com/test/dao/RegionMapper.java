package com.test.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.test.entity.Region;

@Repository
public interface RegionMapper {
	
	List<Region> getAllRegion();
	
	Integer deleteRegion(Integer rid);
	
	Integer addRegion(Region region);
	
	Region getRegionByRid(Integer rid);
}
