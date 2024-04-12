package com.example.bank.history;

import jakarta.persistence.EntityManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;

@DataJpaTest
public class HistoryRepositoryTest {
    @Autowired
    private HistoryRepository historyJPARepository;

    @Autowired
    private EntityManager em;
}
