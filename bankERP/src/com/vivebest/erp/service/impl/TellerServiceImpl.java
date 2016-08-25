package com.vivebest.erp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vivebest.erp.entity.Teller;
import com.vivebest.erp.mapper.TellerMapper;
import com.vivebest.erp.service.TellerService;

@Service
public class TellerServiceImpl implements TellerService {
	
	@Autowired
	private TellerMapper tellerMapper;

	@Override
	public boolean insertTeller(Teller teller) {
		return tellerMapper.insertTeller(teller);
	}

	@Override
	public boolean updateTeller(Teller teller) {
		return tellerMapper.updateTeller(teller);
	}

	@Override
	public Teller selectTeller(Teller teller) {
		return tellerMapper.selectTeller(teller);
	}

	@Override
	public boolean deleteTeller(Teller teller) {
		return tellerMapper.deleteTeller(teller);
	}

	@Override
	public Teller tellerLogin(Teller teller) {
		// TODO Auto-generated method stub
		return tellerMapper.tellerLogin(teller);
	}

	@Override
	public List<Teller> getAllTeller(Teller teller) {
		// TODO Auto-generated method stub
		return tellerMapper.getAllTeller(teller);
	}

	@Override
	public Teller getTellerMessage(Teller teller) {
		// TODO Auto-generated method stub
		return tellerMapper.getTellerMessage(teller);
	}

	@Override
	public long getMaxTNumber() {
		// TODO Auto-generated method stub
		return tellerMapper.getMaxTNumber();
	}

}
