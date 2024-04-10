-- user (3)
insert into user_tb (username, password, fullname, created_at)
values ('ssar', '1234', '김쌀', now());
insert into user_tb (username, password, fullname, created_at)
values ('cos', '1234', '박코스', now());
insert into user_tb (username, password, fullname, created_at)
values ('love', '1234', '최사랑', now());

-- account (5)
insert into account_tb (user_id, number, password, balance, status, created_at)
values ('1', '1111', '1234', 1000, true, now());
insert into account_tb (user_id, number, password, balance, status, created_at)
values ('1', '2222', '1234', 1000, true, now());
insert into account_tb (user_id, number, password, balance, status, created_at)
values ('2', '3333', '1234', 1000, true, now());
insert into account_tb (user_id, number, password, balance, status, created_at)
values ('2', '4444', '1234', 1000, false, now());
insert into account_tb (user_id, number, password, balance, status, created_at)
values ('3', '5555', '1234', 1000, true, now());

-- history (10)
-- 기본 값 ssar 1 - 1000 / ssar 2 - 1000 / cos 3 - 1000 / cos 4 - 1000 / love 5 - 1000
-- 1. ssar 1 - 900 / ssar 2 - 1000 / cos 3 - 1100 / cos 4 - 1000 / love 5 - 1000
insert into history_tb (sender_id, receiver_id, amount, sender_balance, receiver_balance, created_at)
values ('1', '3', 100, 900, 1100, now()); -- ssar의 1번 계좌에서 100원을 cos의 3번 계좌로 입금
-- 2. ssar 1 - 800 / ssar 2 - 1000 / cos 3 - 1200 / cos 4 - 1000 / love 5 - 1000
insert into history_tb (sender_id, receiver_id, amount, sender_balance, receiver_balance, created_at)
values ('1', '3', 100, 800, 1200, now()); -- ssar의 1번 계좌에서 100원을 cos의 3번 계좌로 입금
-- 3. ssar 1 - 800 / ssar 2 - 900 / cos 3 - 1200 / cos 4 - 1000 / love 5 - 1100
insert into history_tb (sender_id, receiver_id, amount, sender_balance, receiver_balance, created_at)
values ('2', '5', 100, 900, 1100, now()); -- ssar의 2번 계좌에서 100원을 love의 5번 계좌로 입금
-- 4. ssar 1 - 700 / ssar 2 - 900 / cos 3 - 1200 / cos 4 - 1000 / love 5 - 1200
insert into history_tb (sender_id, receiver_id, amount, sender_balance, receiver_balance, created_at)
values ('1', '5', 100, 700, 1200, now()); -- ssar의 1번 계좌에서 100원을 love의 5번 계좌로 입금
-- 5. ssar 1 - 800 / ssar 2 - 900 / cos 3 - 1200 / cos 4 - 1000 / love 5 - 1100
insert into history_tb (sender_id, receiver_id, amount, sender_balance, receiver_balance, created_at)
values ('5', '1', 100, 1100, 800, now()); -- love의 5번 계좌에서 100원을 ssar의 1번 계좌로 입금
-- 6. ssar 1 - 800 / ssar 2 - 800 / cos 3 - 1300 / cos 4 - 1000 / love 5 - 1100
insert into history_tb (sender_id, receiver_id, amount, sender_balance, receiver_balance, created_at)
values ('2', '3', 100, 800, 1300, now()); -- ssar의 2번 계좌에서 100원을 cos의 3번 계좌로 입금
-- 7. ssar 1 - 900 / ssar 2 - 800 / cos 3 - 1200 / cos 4 - 1000 / love 5 - 1100
insert into history_tb (sender_id, receiver_id, amount, sender_balance, receiver_balance, created_at)
values ('3', '1', 100, 1200, 900, now()); -- cos의 3번 계좌에서 100원을 ssar의 1번 계좌로 입금
-- 8. ssar 1 - 1000 / ssar 2 - 800 / cos 3 - 1100 / cos 4 - 1000 / love 5 - 1100
insert into history_tb (sender_id, receiver_id, amount, sender_balance, receiver_balance, created_at)
values ('3', '1', 100, 1100, 1000, now()); -- cos의 3번 계좌에서 100원을 ssar의 1번 계좌로 입금
-- 9. ssar 1 - 1000 / ssar 2 - 800 / cos 3 - 1000 / cos 4 - 1000 / love 5 - 1200
insert into history_tb (sender_id, receiver_id, amount, sender_balance, receiver_balance, created_at)
values ('3', '5', 100, 1000, 1200, now()); -- cos의 3번 계좌에서 100원을 love의 5번 계좌로 입금
-- 10. ssar 1 - 1000 / ssar 2 - 700 / cos 3 - 1100 / cos 4 - 1000 / love 5 - 1200
insert into history_tb (sender_id, receiver_id, amount, sender_balance, receiver_balance, created_at)
values ('2', '3', 100, 700, 1100, now()); -- ssar의 1번 계좌에서 100원을 cos의 3번 계좌로 입금