package ltd.newbee.mall.dao;

import ltd.newbee.mall.entity.GoodsPriceHistory;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface GoodsPriceHistoryMapper {
    List<GoodsPriceHistory> getGoodsPriceHistory(@Param("goodsId") Long goodsId,
                                                 @Param("startTime") Date startTime,
                                                 @Param("endTime") Date endTime);
}
