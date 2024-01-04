package ltd.newbee.mall.dao;

import ltd.newbee.mall.entity.Message;

import java.util.List;

public interface MessageMapper {
    List<Message> getMessageList(Long userId);

}