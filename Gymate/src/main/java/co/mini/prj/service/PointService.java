package co.mini.prj.service;

import java.util.List;

public interface PointService {
	List<PointVO> pointSelectList(PointVO vo);
	PointVO pointSelect(PointVO vo);
	int pointInsert(PointVO vo);
	int pointDelete(PointVO vo);
	int pointUpdate(PayVO vo);
	PointVO pointSum(PointVO vo);
	int pointSumUpdate(PayVO vo);
}
