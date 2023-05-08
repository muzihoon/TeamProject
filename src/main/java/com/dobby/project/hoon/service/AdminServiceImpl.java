package com.dobby.project.hoon.service;

import com.dobby.project.hoon.dao.AdminDao;
import com.dobby.project.hoon.domain.AdminDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminDao adminDao;

    @Override
    public AdminDto AdminloginCheck(String MNGR_ID, String MNGR_PWD) throws Exception {
        AdminDto adminDto = new AdminDto();
        adminDto.setMNGR_ID(MNGR_ID);
        adminDto.setMNGR_PWD(MNGR_PWD);
        return adminDao.loginCheck(adminDto);
    }
}
