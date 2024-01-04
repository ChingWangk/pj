package ltd.newbee.mall.service;

import ltd.newbee.mall.entity.ShopperUser;

public interface ShopperUserService {

    ShopperUser login(String userName, String password);

    /**
     * 获取用户信息
     *
     * @param loginUserId
     * @return
     */
    ShopperUser getUserDetailById(Integer loginUserId);

    /**
     * 修改当前登录用户的密码
     *
     * @param loginUserId
     * @param originalPassword
     * @param newPassword
     * @return
     */
    Boolean updatePassword(Integer loginUserId, String originalPassword, String newPassword);

    /**
     * 修改当前登录用户的名称信息
     *
     * @param loginUserId
     * @param loginUserName
     * @param nickName
     * @return
     */
    Boolean updateName(Integer loginUserId, String loginUserName, String nickName);

}
