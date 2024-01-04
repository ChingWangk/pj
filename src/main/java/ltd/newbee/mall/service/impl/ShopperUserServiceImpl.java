package ltd.newbee.mall.service.impl;

import ltd.newbee.mall.dao.ShopperUserMapper;
import ltd.newbee.mall.entity.ShopperUser;
import ltd.newbee.mall.service.ShopperUserService;
import ltd.newbee.mall.util.MD5Util;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class ShopperUserServiceImpl implements ShopperUserService {

    @Resource
    private ShopperUserMapper shopperUserMapper;

    @Override
    public ShopperUser login(String userName, String password) {
        String passwordMd5 = MD5Util.MD5Encode(password, "UTF-8");
        return shopperUserMapper.login(userName, passwordMd5);
    }

    @Override
    public ShopperUser getUserDetailById(Integer loginUserId) {
        return shopperUserMapper.selectByPrimaryKey(loginUserId);
    }

    @Override
    public Boolean updatePassword(Integer loginUserId, String originalPassword, String newPassword) {
        ShopperUser shopperUser = shopperUserMapper.selectByPrimaryKey(loginUserId);
        //当前用户非空才可以进行更改
        if (shopperUser != null) {
            String originalPasswordMd5 = MD5Util.MD5Encode(originalPassword, "UTF-8");
            String newPasswordMd5 = MD5Util.MD5Encode(newPassword, "UTF-8");
            //比较原密码是否正确
            if (originalPasswordMd5.equals(shopperUser.getLoginPassword())) {
                //设置新密码并修改
                shopperUser.setLoginPassword(newPasswordMd5);
                if (shopperUserMapper.updateByPrimaryKeySelective(shopperUser) > 0) {
                    //修改成功则返回true
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public Boolean updateName(Integer loginUserId, String loginUserName, String nickName) {
        ShopperUser shopperUser = shopperUserMapper.selectByPrimaryKey(loginUserId);
        //当前用户非空才可以进行更改
        if (shopperUser != null) {
            //设置新名称并修改
            shopperUser.setLoginUserName(loginUserName);
            shopperUser.setNickName(nickName);
            if (shopperUserMapper.updateByPrimaryKeySelective(shopperUser) > 0) {
                //修改成功则返回true
                return true;
            }
        }
        return false;
    }
}
