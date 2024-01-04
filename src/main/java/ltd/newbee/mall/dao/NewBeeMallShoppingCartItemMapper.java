package ltd.newbee.mall.dao;

import ltd.newbee.mall.entity.NewBeeMallShoppingCartItem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface NewBeeMallShoppingCartItemMapper {
    int deleteByPrimaryKey(Long cartItemId);

    int insert(NewBeeMallShoppingCartItem record);

    int insertSelective(NewBeeMallShoppingCartItem record);

    NewBeeMallShoppingCartItem selectByPrimaryKey(Long cartItemId);

    NewBeeMallShoppingCartItem selectByUserIdAndGoodsId(@Param("newBeeMallUserId") Long newBeeMallUserId, @Param("goodsId") Long goodsId);

    List<NewBeeMallShoppingCartItem> selectByUserId(@Param("newBeeMallUserId") Long newBeeMallUserId, @Param("number") int number);

    int selectCountByUserId(Long newBeeMallUserId);

    int updateByPrimaryKeySelective(NewBeeMallShoppingCartItem record);

    // 设置用户商品价格下限
    void setUserLowPrice(@Param("userId") Long userId, @Param("goodsId") Long goodsId, @Param("lowPrice") int lowPrice);
    int updateByPrimaryKey(NewBeeMallShoppingCartItem record);

    int deleteBatch(List<Long> ids);
}