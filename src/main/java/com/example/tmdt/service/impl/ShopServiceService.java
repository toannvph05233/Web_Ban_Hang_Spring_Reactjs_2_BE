package com.example.tmdt.service.impl;

import com.example.tmdt.dto.ShopDTO;
import com.example.tmdt.dto.WardsDTO;
import com.example.tmdt.mapper.ShopMapper;
import com.example.tmdt.model.fkProduct.Shop;
import com.example.tmdt.repository.ShopRepository;
import com.example.tmdt.repository.WardsRepository;
import com.example.tmdt.security.model.Account;
import com.example.tmdt.security.model.Role;
import com.example.tmdt.security.repository.IAccountRepository;
import com.example.tmdt.service.IShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;

@Service
public class ShopServiceService implements IShopService {
    @Autowired
    private ShopRepository shopRepository;
    @Autowired
    private ShopMapper shopMapper;

    @Autowired
    private IAccountRepository accountRepository;

    @Autowired
    private WardsRepository wardsRepository;

    @Override
    public void save(ShopDTO dto) {
        Shop shop = shopMapper.toEntity(dto);
        Account account = accountRepository.findById(shop.getAccount().getId()).get();
        Set<Role> roles = new HashSet<>();
        Role role = new Role();
        role.setId(3l);
        roles.add(role);
        account.setRoles(roles);
        accountRepository.save(account);
        shopMapper.toDto(shopRepository.save(shop));
    }


    @Override
    public void delete(Long id) {

    }

    @Override
    public ShopDTO findOne(Long id) {
        Optional<Shop> optionalShop = shopRepository.findById(id);
        if(optionalShop.isPresent()) {
            Shop shop = optionalShop.get();
            return shopMapper.toDto(shop);
        } return null;
    }

    @Override
    public List<ShopDTO> findAll() {
        List<Shop> shops = shopRepository.findAll();
        return shopMapper.toDto(shops);
    }

    @Override
    public ShopDTO findShopByIdAccount(Long id) {
        Shop shop = shopRepository.findShopByIdAccount(id);
        if (shop != null) {
            return shopMapper.toDto(shop);
        }
         return null;
    }
}
