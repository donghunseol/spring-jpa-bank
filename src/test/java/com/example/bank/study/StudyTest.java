package com.example.bank.study;

import org.junit.jupiter.api.Test;

import java.text.DecimalFormat;

public class StudyTest {

    @Test
    public void amount_test(){
        long money = 1000000000;

        DecimalFormat df = new DecimalFormat("###,###");
        String formatMoney = df.format(money);

        System.out.println(formatMoney); // 1,000,000,000
    }

    @Test
    public void same_account_test(){
        Integer senderNumber = 1111;
        Integer receiverNumber = 1111;

        if(senderNumber == receiverNumber){
            System.out.println("same_account_test : 동일O");
        }else {
            System.out.println("same_account_test : 동일X");
        } // 동일해도 동일하지 않다고 하는데 Wrapper Class 는 8비트 이상일 경우 equals 로 비교해야만 정확한 비교가 가능하다!
    }
}
