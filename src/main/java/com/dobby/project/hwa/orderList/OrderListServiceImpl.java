package com.dobby.project.hwa.orderList;

import com.dobby.project.hwa.cart.CartDto;
import com.dobby.project.hwa.order.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderListServiceImpl implements OrderListService {
    @Autowired
    OrderListDao orderListDao;


    @Override
    public List<OrdDto>  getOrdInfo(String mbrId) {

        return orderListDao.selectOrderInfo(mbrId);
    }
}
