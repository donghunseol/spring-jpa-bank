package com.example.bank.account;

import jakarta.persistence.EntityManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;

@DataJpaTest
public class AccountRepositoryTest {
    @Autowired
    private AccountRepository accountJPARepository;

    @Autowired
    private EntityManager em;
}
