package com.kh.kgv.helpDesk.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.kgv.helpDesk.model.vo.LostPagenation;
import com.kh.kgv.customer.model.vo.User;
import com.kh.kgv.helpDesk.model.vo.LostPackage;
import com.kh.kgv.helpDesk.model.vo.Mtm;
import com.kh.kgv.helpDesk.model.vo.MtmPagenation;
import com.kh.kgv.login.controller.LoginController;
import com.kh.kgv.management.model.vo.Notice;

@Repository
public class HelpDeskDAO {

	private Logger logger = LoggerFactory.getLogger(LoginController.class);


	@Autowired
	private SqlSessionTemplate sqlSession;

	// 현재번호의 공지사항
	public Notice selectNoticeDetail(int noticeNo) {
		return sqlSession.selectOne("managerMapper.noticeDetail", noticeNo);
	}

	// 이전번호의 공지사항
	public Notice findPrevNoticeNo(int prevNoticeNo) {
		return sqlSession.selectOne("managerMapper.noticePrevNo", prevNoticeNo);
	}

	// 다음번호의 공지사항
	public Notice findNextNoticeNo(int nextNoticeNo) {
		return sqlSession.selectOne("managerMapper.noticeNextNo", nextNoticeNo);
	}

	// 1:1문의 작성 후 이동할 MTMNO조회	
	public int selectMtmNo(Mtm mtm) {
		return sqlSession.selectOne("mtmMapper.selectMtmNo", mtm);
	}


	// 1:1문의 본인/권한자가 접근하기위한 갯수카운트
	public int getMtmListCount(int userNo, int userManagerStAsInt) {
		Map<String, Object> params = new HashMap<>();
		params.put("userNo", userNo);
		params.put("userManagerSt", userManagerStAsInt);
		
		return sqlSession.selectOne("mtmMapper.getUserMtmCount-all", params);
	}

	// 1:1문의 리스트 출력	
	public List<Mtm> getMtmList(MtmPagenation pagination, int userNo, int userManagerStAsInt) {
		int offset = (pagination.getCurrentPage() - 1) * pagination.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pagination.getLimit());
		Map<String, Object> params = new HashMap<>();
		params.put("userNo", userNo);
		params.put("userManagerSt", userManagerStAsInt);
		return sqlSession.selectList("mtmMapper.userMtmList-all", params , rowBounds);
	}

	// 1:1문의 세부사항
	public Mtm selectmTmDetail(int mtmNo) {
		return sqlSession.selectOne("mtmMapper.mtmDetail", mtmNo);
	}

	// 1:1문의 insert
	public int addmTm(Mtm mtm) {
		return sqlSession.insert("mtmMapper.addmTm", mtm);
	}
	
	// 1:1문의 게시물 삭제
	public int deleteBoard(int mtmNo) {
		return sqlSession.update("mtmMapper.deleteBoard", mtmNo);
	}

	// 1:1문의 댓글 삭제
	public int replyDelete(int mtmNo) {
		return sqlSession.update("mtmMapper.replyDelete", mtmNo);
	}

	// 1:1문의 댓글 등록
	public int replyWrite(int mtmNo, String content, String managerNick) {
		Map<String, Object> params = new HashMap<>();
		params.put("mtmNo", mtmNo);
		params.put("content", content);
		params.put("managerNick", managerNick);
		return sqlSession.update("mtmMapper.replyWrite", params);
	}


	
	// 분실물 문의 글 작성 후 자신의 번호로 이동하기 위한 LostNo조회
	public int selectLostNo(LostPackage lost) {
		return sqlSession.selectOne("lostMapper.selectLostNo", lost);
	}
	
	// 분실물문의 갯수 카운트 ( insert를 위한 카운트 )
	public int getLostListCount() {
		return sqlSession.selectOne("lostMapper.getLostCount");
	}
	
	// 분실물문의 본인/권한자가 접근하기위한 갯수카운트
	public int getLostListCount(int userNo, int userManagerStAsInt) {
		Map<String, Object> params = new HashMap<>();
		params.put("userNo", userNo);
		params.put("userManagerSt", userManagerStAsInt);
		return sqlSession.selectOne("lostMapper.getUserLostCount", params);
	}

	// 분실물 리스트 출력
	public List<Mtm> lostLists(LostPagenation pagination, int userNo, int userManagerStAsInt) {
		int offset = (pagination.getCurrentPage() - 1) * pagination.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pagination.getLimit());
		Map<String, Object> params = new HashMap<>();
		params.put("userNo", userNo);
		params.put("userManagerSt", userManagerStAsInt);
		return sqlSession.selectList("lostMapper.userLostList", params , rowBounds);
	}

	// 분실물 세부사항 조회
	public LostPackage selectLostDetail(int lostNo) {
		return sqlSession.selectOne("lostMapper.lostdetail",lostNo);
	}

	// 분실물 삽입
	public int addLost(LostPackage lost) {
		return sqlSession.insert("lostMapper.addLost", lost);
	}

	// 분실물 게시물 삭제
	public int deleteLost(int mtmNo) {
		return sqlSession.update("lostMapper.deleteLost", mtmNo);
	}

	// 분실물 게시물 답변삭제
	public int replyLostDelete(int lostNo) {
		return sqlSession.update("lostMapper.replyLostDelete", lostNo);
	}

	// 분실물 게시물 답변 작성
	public int replyLostWrite(int lostNo, String content, String managerNick) {
		Map<String, Object> params = new HashMap<>();
		params.put("lostNo", lostNo);
		params.put("content", content);
		params.put("managerNick", managerNick);
		return sqlSession.update("lostMapper.replyLostWrite", params);
	}

	public int selectmtmPw(int mtmNo) {
		return sqlSession.selectOne("mtmMapper.selectmtmPw", mtmNo);
	}

	public int selectUserNo(int mtmNo) {
		return sqlSession.selectOne("mtmMapper.selectUserNo", mtmNo);

	}

	




















}
