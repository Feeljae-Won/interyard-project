package com.interyard.qna.service;


import com.interyard.main.dao.DAO;
import com.interyard.main.service.Service;
import com.interyard.qna.dao.QnaDAO;
import com.interyard.qna.vo.QnaVO;

public class QnaAWriteService implements Service {

	QnaDAO dao = new QnaDAO();
	
	public void setDAO(DAO dao) {
		this.dao = (QnaDAO) dao;
	}

	@Override
	public Integer service(Object obj) throws Exception {
		// TODO Auto-generated method stub
		QnaVO vo = (QnaVO) obj;
		
		// ordNo 1 증가
		dao.increaseOrdNo(vo);
		
		return dao.aWrite(vo);
	}

	
}