package raveneye.liveflock.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;
import raveneye.liveflock.repository.AccountRepository;
import raveneye.liveflock.entity.Account;

import java.net.URI;
import java.util.Optional;

@RestController
@RequestMapping("/accounts")
public class AccountController {
  private final AccountRepository accountRepository;

  public AccountController(AccountRepository accountRepository) {
    this.accountRepository = accountRepository;
  }

  @GetMapping("/{username}")
  public ResponseEntity<Account> findById(@PathVariable String username) {
    Optional<Account> accountOptional = accountRepository.findAccountViewBy(username);
    return accountOptional.map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
  }

  @PostMapping
  public ResponseEntity<Void> createAccount(@RequestBody Account newAccount, UriComponentsBuilder ucb) {
    Account savedAccount = accountRepository.save(newAccount);
    URI locationOfNewAccount = ucb
            .path("/accounts/{id}")
            .buildAndExpand(savedAccount.id())
            .toUri();
    return ResponseEntity.created(locationOfNewAccount).build();
  }
}
