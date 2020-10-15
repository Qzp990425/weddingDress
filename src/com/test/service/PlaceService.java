package com.test.service;


import java.util.List;

import com.github.pagehelper.PageInfo;
import com.test.entity.Place;

public interface PlaceService {
	
	
	PageInfo<Place> getAllPlace(Integer pageNum);
	
	List<Place> getAllPlaceByRid(Integer rid);
	
	boolean deletePlace(Integer pid);
	
	boolean addPlace(Place Place);
	
}
