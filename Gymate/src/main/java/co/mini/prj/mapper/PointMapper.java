package co.mini.prj.mapper;

import java.util.List;

import co.mini.prj.service.PayVO;
import co.mini.prj.service.PointVO;

public interface PointMapper {
	List<PointVO> pointSelectList(PointVO vo);
	PointVO pointSelect(PointVO vo);
	int pointInsert(PointVO vo);
	int pointDelete(PointVO vo);
	int pointUpdate(PayVO vo);
	PointVO pointSum(PointVO vo);
	int pointSumUpdate(PayVO vo);
}