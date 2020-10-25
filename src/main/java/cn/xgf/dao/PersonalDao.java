package cn.xgf.dao;


import cn.xgf.domain.Personal;

import java.util.List;

public interface PersonalDao {

    int insertPersonal(Personal personal);
    List<Personal> selectPersonal();
}
