package com.test.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.test.entity.Place;

@Repository
public interface PlaceMapper {
	
	List<Place> getAllPlaceByRid(Integer rid);
	
	List<Place> getAllPlace();
	
	Integer deletePlace(Integer pid);
	
	Integer addPlace(Place Place);
	
	Place getPlaceByPid(Integer pid);
}
