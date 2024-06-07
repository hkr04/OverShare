package com.example.mapper;

import com.example.entity.Circulars;

import java.util.List;

public interface MsgMapper {
    List<Circulars> selectByUserId(Circulars msg);

    void add(Circulars msg);

    void deleteById(Integer id);

    Circulars selectById(Integer id);

    void updateById(Circulars msg);

    List<Circulars> selectPage(Circulars msg);

    List<Circulars> selectAll(Circulars msg);
}
