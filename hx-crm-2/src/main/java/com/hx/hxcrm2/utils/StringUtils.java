package com.hx.hxcrm2.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class StringUtils {

    public static String getNowTime(){
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = new Date();
        return   simpleDateFormat.format(date);
    }

}