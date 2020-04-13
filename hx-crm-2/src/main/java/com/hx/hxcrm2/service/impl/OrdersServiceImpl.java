package com.hx.hxcrm2.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.hx.hxcrm2.entity.Orders;
import com.hx.hxcrm2.mapper.OrdersMapper;
import com.hx.hxcrm2.service.OrdersService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class OrdersServiceImpl extends ServiceImpl<OrdersMapper, Orders> implements OrdersService {
}
