package com.example.tmdt.security.service.impl;

import com.example.tmdt.security.model.Account;
import com.example.tmdt.security.model.AccountPrinciple;
import com.example.tmdt.security.model.Role;
import com.example.tmdt.security.repository.IAccountRepository;
import com.example.tmdt.security.service.IAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.Optional;
import java.util.Set;

@Service
public class AccountServiceImpl implements UserDetailsService, IAccountService {

    @Autowired
    private IAccountRepository iUserRepository;


    public Account findById(Long id) {
        Optional<Account> userOptional = iUserRepository.findById(id);
        return userOptional.map(this::toDTO).orElse(null);
    }

    @Override
    public Account findAccountByEmail(String email) {
        return iUserRepository.findAccountByEmail(email);
    }


    public Optional<Account> findByUsername(String username) {
        return iUserRepository.findByUsername(username);
    }

    public void save(Account user) {
        Set<Role> roles = new HashSet<>();
        Role role = new Role();
        role.setId(2l);
        roles.add(role);
        user.setRoles(roles);
        iUserRepository.save(user);
    }

    public void addAcc(Account account) {
        iUserRepository.addUser(account.getId());
    }

    public UserDetails loadUserByUsername(String username) {
        Account user = findByUsername(username).get();
        if (user != null) {
            return AccountPrinciple.build(user);
        }
        return null;
    }

    public Account toDTO(Account user) {
        return new Account(user.getId(), user.getUsername(), user.getRoles().toString());
    }

}
