package com.example.tmdt.security.controller;

import com.example.tmdt.dto.UserDTO;
import com.example.tmdt.security.jwt.service.JwtResponse;
import com.example.tmdt.security.jwt.service.JwtService;
import com.example.tmdt.security.model.Account;
import com.example.tmdt.security.model.Role;
import com.example.tmdt.security.repository.IAccountRepository;
import com.example.tmdt.security.service.IAccountService;
import com.example.tmdt.security.service.IRoleService;
import com.example.tmdt.security.service.impl.AccountServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/auth")
public class AuthController {
    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private JwtService jwtService;

    @Autowired
    private IAccountService userService;
    @Autowired
    IAccountRepository iAccountRepository;

    @Autowired
    private IRoleService roleService;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    AccountServiceImpl accountService;

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ResponseEntity<?> login(@RequestBody Account user) {
        Account userInfo = userService.findByUsername(user.getUsername()).get();
        if (userInfo.getStatus().equals("block")){
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        Authentication authentication = authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(user.getUsername(), user.getPassword()));
        SecurityContextHolder.getContext().setAuthentication(authentication);
        String jwt = jwtService.generateTokenLogin(authentication);
        UserDetails userDetails = (UserDetails) authentication.getPrincipal();
        return ResponseEntity.ok(new JwtResponse(userInfo.getId(), jwt,
                userInfo.getUsername(), userInfo.getUsername(), userDetails.getAuthorities()));


    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public ResponseEntity<String> register(@RequestBody Account user) {
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        userService.save(user);
        userService.addAcc(user);
        return new ResponseEntity<>("Vui lòng quay lại trang đăng nhập", HttpStatus.OK);
    }

    @RequestMapping(value = "/roles", method = RequestMethod.GET)
    public ResponseEntity<Iterable<Role>> getRoles() {
        return new ResponseEntity<>(roleService.findAll(), HttpStatus.OK);
    }

    @PostMapping("/login-google")
    public ResponseEntity<JwtResponse> authenticateGoogle(@RequestBody Account accountGoogle) {
        Optional<Account> optionalAccount = iAccountRepository.findByEmail(accountGoogle.getEmail());

        if (!optionalAccount.isPresent()) {
            accountGoogle.setPassword(passwordEncoder.encode("123456"));
            accountGoogle.setUsername(accountGoogle.getEmail());
            userService.save(accountGoogle);
            userService.addAcc(accountGoogle);
        }
        optionalAccount = iAccountRepository.findByEmail(accountGoogle.getEmail());
        Account userInfo = optionalAccount.get();
        if (!userInfo.getStatus().equals("active")) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        UserDetails userDetails = accountService.loadUserByUsername(userInfo.getUsername());
        UsernamePasswordAuthenticationToken authentication = new UsernamePasswordAuthenticationToken(
                userDetails, null, userInfo.getRoles());
        SecurityContextHolder.getContext().setAuthentication(authentication);
        String jwt = jwtService.generateTokenLogin(authentication);
        return ResponseEntity.ok(new JwtResponse(userInfo.getId(), jwt,
                userInfo.getUsername(), userInfo.getUsername(), userDetails.getAuthorities()));
    }


}