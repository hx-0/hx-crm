package com.hx.hxcrm2.utils;

import org.junit.Test;

import static org.junit.Assert.*;

public class ShiroUtilsTest {

    @Test
    public void encryptPassword() {
        System.out.println("随机盐"+ShiroUtils.randomSalt());
    }

    @Test
    public void randomSalt() {
        System.out.println("密码"+ShiroUtils.encryptPassword("000000","hx4ea146fd7732"));
    }
}