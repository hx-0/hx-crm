package com.hx.hxcrm2.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.hx.hxcrm2.entity.Contact;
import com.hx.hxcrm2.mapper.ContactMapper;
import com.hx.hxcrm2.service.ContactService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class ContactServiceImpl extends ServiceImpl<ContactMapper, Contact> implements ContactService {
}
