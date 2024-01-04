package ltd.newbee.mall.controller.admin;

import ltd.newbee.mall.entity.Message;
import ltd.newbee.mall.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/messages")
public class MessageController {

    @Autowired
    private MessageService messageService;  // 假设有一个名为 MessageService 的服务用于处理消息相关的业务逻辑

    @GetMapping("/user/{userId}")
    public ResponseEntity<List<Message>> getUserMessages(@PathVariable Long userId) {

        List<Message> messages = messageService.getMessageList(userId);
        return new ResponseEntity<>(messages, HttpStatus.OK);

    }
}
