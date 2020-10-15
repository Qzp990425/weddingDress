package com.test.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.test.dao.AdminMapper;
import com.test.dao.PlaceMapper;
import com.test.dao.RegionMapper;
import com.test.entity.Admin;
import com.test.entity.Place;
import com.test.service.AdminService;
import com.test.service.PlaceService;

@Service
public class PlaceServiceImpl implements PlaceService{

	@Autowired
	PlaceMapper placeMapper;
	@Autowired
	RegionMapper regionMapper;
	
	
	@Override
	public PageInfo<Place> getAllPlace(Integer pageNum) {
		// TODO Auto-generated method stub
		PageHelper.startPage(pageNum, 4);
		List<Place> list = placeMapper.getAllPlace();
		for(int i = 0 ; i < list.size() ; i ++) {
			Place place = list.get(i);
			place.setRegion(regionMapper.getRegionByRid(place.getRid()));
			list.remove(i);
			list.add(i, place);
		}
		return new PageInfo<>(list);
	}

	@Override
	public List<Place> getAllPlaceByRid(Integer rid) {
		List<Place> list = placeMapper.getAllPlaceByRid(rid);
		for(int i = 0 ; i < list.size() ; i ++) {
			Place place = list.get(i);
			place.setRegion(regionMapper.getRegionByRid(place.getRid()));
			list.remove(i);
			list.add(i, place);
		}
		return list;
	}

	@Override
	public boolean deletePlace(Integer rid) {
		// TODO Auto-generated method stub
		Integer result = placeMapper.deletePlace(rid);
		if(result == 1) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public boolean addPlace(Place Place) {
		Integer result = placeMapper.addPlace(Place);
		if(result == 1) {
			return true;
		} else {
			return false;
		}
	}
	
	
}
