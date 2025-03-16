package org.example.realestate.repository;

import org.example.realestate.entity.Account;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AccountRepository extends RepositoryInterface<Account, Integer> {
    Account findByUsername(String username);
}
