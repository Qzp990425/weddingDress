package com.test.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.test.dao.RegionMapper;
import com.test.entity.Region;
import com.test.service.RegionService;



@Service
public class RegionServiceImpl implements RegionService{
	
	@Autowired
	RegionMapper regionMapper;

	@Override
	public PageInfo<Region> getAllRegion(Integer pageNum) {
		PageHelper.startPage(pageNum, 4);
		List<Region> list = regionMapper.getAllRegion();
		return new PageInfo<>(list);
	}

	@Override
	public boolean deleteRegion(Integer rid) {
		// TODO Auto-generated method stub
		Integer result = regionMapper.deleteRegion(rid);
		if(result == 1) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public boolean addRegion(Region region) {
		// TODO Auto-generated method stub
		Integer result = regionMapper.addRegion(region);
		if(result == 1) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public List<Region> getRegionList() {
		List<Region> list = regionMapper.getAllRegion();
		return list;
	}
}
