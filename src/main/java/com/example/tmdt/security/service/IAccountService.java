package com.example.tmdt.security.service;


import com.example.tmdt.security.jwt.service.JwtResponse;
import com.example.tmdt.security.model.Account;

import java.util.Optional;

public interface IAccountService {
    Optional<Account> findByUsername(String username);


    Account toDTO(Account account);

    void save(Account user);

    void addAcc(Account account);

    Account findById(Long id);

    Account findAccountByEmail(String email);
}
