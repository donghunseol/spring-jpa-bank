package com.example.bank.account;

import com.example.bank._core.errors.exception.Exception400;
import com.example.bank._core.utils.MyFormatUtil;
import com.example.bank.user.User;
import jakarta.persistence.*;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;

import java.sql.Timestamp;
import java.time.LocalDateTime;

@NoArgsConstructor
@Data
@Table(name = "account_tb")
@Entity
public class Account {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id; // pk 값

    @ManyToOne(fetch = FetchType.LAZY)
    private User user;

    @Column(unique = true, nullable = false, length = 4)
    private Integer number; // 1111, 2222 계좌번호

    @Column(nullable = false, length = 4)
    private String password;

    @Column(nullable = false)
    private Long balance;

    @Column(nullable = false)
    private Boolean status; // true, false 상태

    @CreationTimestamp
    private Timestamp createdAt;

    // 출금
    public void withdraw(Long amount) {
        this.balance -= amount;
    }

    // 입금
    public void deposit(Long amount) {
        this.balance += amount;
    }

    // 출금 잔액이 충분한지 확인하는 메서드 (또한 입력하는 잔액이 -인 경우 절대값으로 변환 시켜준다)
    public void lackCheck(Long amount) {
        if(balance < amount) {
            Long lackAmount = balance - amount;
            lackAmount = Math.abs(lackAmount); // - 금액이 들어갈 경우를 대비해서 절대값으로 변환

            throw new Exception400("출금할 잔액이 부족합니다 : " + MyFormatUtil.moneyFormat(lackAmount)); // ###,### 값이 제대로 들어간 상태로 출력 값을 보여준다.
        }
    }

    @Builder
    public Account(Long id, User user, Integer number, String password, Long balance, Boolean status, Timestamp createdAt) {
        this.id = id;
        this.user = user;
        this.number = number;
        this.password = password;
        this.balance = balance;
        this.status = status;
        this.createdAt = createdAt;
    }
}