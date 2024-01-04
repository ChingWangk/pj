package ltd.newbee.mall.dao;

import ltd.newbee.mall.entity.ShopperUser;
import org.apache.ibatis.annotations.Param;

public interface ShopperUserMapper {
    int insert(ShopperUser record);

    int insertSelective(ShopperUser record);

    /**
     * 登陆方法
     *
     * @param userName
     * @param password
     * @return
     */
    ShopperUser login(@Param("userName") String userName, @Param("password") String password);

    ShopperUser selectByPrimaryKey(Integer shopperUserId);

    int updateByPrimaryKeySelective(ShopperUser record);

    int updateByPrimaryKey(ShopperUser record);
}