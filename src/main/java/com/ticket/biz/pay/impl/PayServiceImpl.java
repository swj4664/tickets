package com.ticket.biz.pay.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ticket.biz.pay.PayService;
import com.ticket.biz.pay.PayVO;

@Service("payService")
public class PayServiceImpl implements PayService {

	@Autowired
	private PayDAO payDAO;

	@Override
	public void insertPay(PayVO vo) {

		payDAO.insertPay(vo);
	}

	@Override
	public void updatePay(PayVO vo) {
		payDAO.updatePay(vo);
	}

	@Override
	public void deletePay(PayVO vo) {
		payDAO.deletePay(vo);
	}

	@Override
	public List<PayVO> getPayList(PayVO vo) {

		return payDAO.getPayList(vo);
	}

	@Override
	public int totalPayListCnt(PayVO vo) {

		return payDAO.totalPayListCnt(vo);
	}

	@Override
	public PayVO getPay(PayVO vo) {
		return payDAO.getPay(vo);
	}

}
