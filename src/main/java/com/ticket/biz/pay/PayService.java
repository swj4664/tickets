package com.ticket.biz.pay;

import java.util.List;

public interface PayService {
	//CRUD 기능의 메소드 구현
		void insertPay(PayVO vo);

		void updatePay(PayVO vo);

		void deletePay(PayVO vo);

		List<PayVO> getPayList(PayVO vo);

		int totalPayListCnt (PayVO vo);

		PayVO getPay(PayVO vo);
}
