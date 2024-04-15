package com.example.bank.account;

import lombok.Data;

public class AccountRequest {

    @Data
    public static class TransferDTO{
        // 주는 사람
        private Integer senderNumber;
        // 받는 사람
        private Integer receiverNumber;
        // 금액
        private Long amount;
        // 주는 사람 비밀번호
        private String senderPassword;
    }
}
