package com.hx.hxcrm2.controller;

import com.hx.hxcrm2.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class OrdersController {

    @Autowired
    private OrdersService ordersService;


}
