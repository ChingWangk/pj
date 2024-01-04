package ltd.newbee.mall.service;

import ltd.newbee.mall.entity.Message;

import java.util.List;
public interface MessageService {
    List<Message> getMessageList(Long userId);
}
