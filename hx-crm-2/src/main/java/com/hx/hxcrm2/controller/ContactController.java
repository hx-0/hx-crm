package com.hx.hxcrm2.controller;

import com.hx.hxcrm2.entity.Contact;
import com.hx.hxcrm2.service.ContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ContactController {

    @Autowired
    private ContactService contactService;

//    @GetMapping("/contacts")
//    public List<Contact> contacts(){
//        return contactService.list();
//    }

}
