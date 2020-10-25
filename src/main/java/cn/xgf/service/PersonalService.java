package cn.xgf.service;

import cn.xgf.domain.Personal;


import java.util.List;

public interface PersonalService {

    int addPersonal(Personal personal);
    List<Personal> findPersonal();
}
