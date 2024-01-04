package ltd.newbee.mall.service;

import ltd.newbee.mall.entity.GoodsPriceHistory;

import java.util.Date;
import java.util.List;

public interface GoodsPriceHistoryService {
    List<GoodsPriceHistory> getGoodsPriceHistory(Long goodsId, Date startTime, Date endTime);
}
