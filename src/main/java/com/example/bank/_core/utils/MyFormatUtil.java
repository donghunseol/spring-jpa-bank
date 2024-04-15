package com.example.bank._core.utils;

import java.text.DecimalFormat;

public class MyFormatUtil {

    // 숫자를 받을시 1,000,000 으로 표현 할 때 주로 사용한다!
    public static String moneyFormat(Long value){
        DecimalFormat dm = new DecimalFormat("###,###");
        String formatValue = dm.format(value); // 받는 숫자를 format의 형태에 맞춰서 String 에 저장한다!
        return formatValue;
    }
}
