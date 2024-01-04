package ltd.newbee.mall.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import ltd.newbee.mall.service.NewBeeMallUserService;
import ltd.newbee.mall.dao.NewBeeMallShoppingCartItemMapper;
import ltd.newbee.mall.service.impl.NewBeeMallShoppingCartServiceImpl;

import java.util.List;

@Controller
@RequestMapping("/shoppingCart")
public class ShoppingCartController {

    // 导入其他必要的注入...

    @Autowired
    private NewBeeMallShoppingCartServiceImpl shoppingCartService;

    @PostMapping("/setUserLowPrice")
    @ResponseBody
    public String setUserLowPrice(@RequestParam Long userId, @RequestParam Long goodsId, @RequestParam int lowPrice) {
        // 调用实例方法
        return shoppingCartService.setUserLowPrice(userId, goodsId, lowPrice);
    }


}
