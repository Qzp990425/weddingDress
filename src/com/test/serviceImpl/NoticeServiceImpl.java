package com.test.serviceImpl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.test.dao.NoticeMapper;
import com.test.entity.Notice;
import com.test.service.NoticeService;
import com.test.utils.Util;

@Service
public class NoticeServiceImpl implements NoticeService{
	
	@Autowired
	NoticeMapper noticeMapper;

	@Override
	public PageInfo<Notice> getMyNotice(Integer uid, Integer pageNum) {
		PageHelper.startPage(pageNum, 6);
		List<Notice> list = noticeMapper.getMyNotice(uid);
		return new PageInfo<>(list);
	}

	@Override
	public PageInfo<Notice> getAllNotice(Integer pageNum) {
		PageHelper.startPage(pageNum, 4);
		List<Notice> list = noticeMapper.getAllNotice();
		return new PageInfo<>(list);
	}

	@Override
	public boolean addNotice(Notice notice) {
		notice.setTime(Util.formatDate(new Date()));
		Integer result = noticeMapper.addNotice(notice);	
		if(result == 1) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public boolean deleteNotice(Integer nid) {
		Integer result = noticeMapper.deleteNotice(nid);
		if(result == 1) {
			return true;
		} else {
			return false;
		}
	}
}
