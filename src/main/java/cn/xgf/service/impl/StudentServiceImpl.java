package cn.xgf.service.impl;

import cn.xgf.dao.PersonalDao;
import cn.xgf.domain.Personal;
import cn.xgf.service.PersonalService;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;

@Service
public class StudentServiceImpl implements PersonalService {
    //引用类型自动注入@Autowired, @Resource
    @Resource
    private PersonalDao personalDao;




    @Override
    public int addPersonal(Personal personal) {
        int i = personalDao.insertPersonal(personal);
        return i;
    }

    @Override
    public List<Personal> findPersonal() {
        return personalDao.selectPersonal();
    }
}
