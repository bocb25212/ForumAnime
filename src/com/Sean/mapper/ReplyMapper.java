package com.Sean.mapper;

import com.Sean.pojo.Reply;

import java.util.List;

public interface ReplyMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Reply record);

    int insertSelective(Reply record);

    Reply selectByPrimaryKey(Long id);

    List<Reply> getRepliesOfTopic(Integer topicId);

    int updateByPrimaryKeySelective(Reply record);

    int updateByPrimaryKeyWithBLOBs(Reply record);

    int updateByPrimaryKey(Reply record);

    int getRepliesNum(Integer topicId);

}