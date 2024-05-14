package com.example.tmdt.controller;

import com.example.tmdt.security.model.Account;
import com.example.tmdt.security.repository.IAccountRepository;
import com.example.tmdt.security.service.IAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/admin")
public class AdminController {
    @Autowired
    IAccountRepository accountRepository;

    @GetMapping
    public List<Account> getAll(){
        return accountRepository.findAllByRolesUser("ROLE_USER");

    }
    @GetMapping("/manager")
    public List<Account> getAllShop(){
        return accountRepository.findAllByRolesUser("ROLE_SHOP");

    }
    @PostMapping("/{accountId}")
    public ResponseEntity<?> changeStatus(@PathVariable Long accountId){
        Account account = accountRepository.findById(accountId).get();
        if (account.getStatus().equals("block")){
            account.setStatus("active");
        }else {
            account.setStatus("block");
        }
        accountRepository.save(account);
        return ResponseEntity.ok(account);

    }
}
