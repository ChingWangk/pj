package ltd.newbee.mall.service.impl;

import ltd.newbee.mall.dao.MessageMapper;
import ltd.newbee.mall.service.MessageService;
import ltd.newbee.mall.entity.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MessageServiceImpl implements MessageService {

    @Autowired
    private MessageMapper messageMapper;  // 假设有一个 MessageMapper 处理数据库操作

    @Override
    public List<Message> getMessageList(Long userId) {
        // 根据用户 ID 从数据库中获取消息列表
        return messageMapper.getMessageList(userId);
    }


}
