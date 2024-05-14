package com.example.tmdt.security.repository;

import com.example.tmdt.security.model.Account;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Repository
@Transactional
public interface IAccountRepository extends JpaRepository<Account, Long> {
    Optional<Account> findByUsername(String username);

    @Query(value = "select a.* from Account a join account_roles a_r on a.id = a_r.account_id " +
            "join role on role.id = a_r.roles_id where role.name = :role", nativeQuery = true)
    List<Account> findAllByRolesUser(@Param("role") String role);

    Optional<Account> findByEmail(String email);

    @Modifying
    @Query(value = "insert into account_roles (account_id, roles_id ) values (?1,?2)", nativeQuery = true)
    void addAcc(Long idAcc, Long idRole);

    @Modifying
    @Query(value = "insert into user (account_id,wards_id) values (?1,1)", nativeQuery = true)
    void addUser(Long idAcc);

    Account findAccountByEmail(String email);
}
