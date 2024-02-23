package raveneye.liveflock.Controllers;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;
import raveneye.liveflock.Entities.Account;
import raveneye.liveflock.Repositories.AccountRepository;

import java.net.URI;
import java.util.Optional;

@RestController
@RequestMapping("/accounts")
public class AccountController {
  private final AccountRepository accountRepository;

  public AccountController(AccountRepository accountRepository) {
    this.accountRepository = accountRepository;
  }

  @GetMapping()
  public ResponseEntity<Iterable<Account>> findAllAccounts() {
    return ResponseEntity.ok(accountRepository.findAll());
  }

  @GetMapping("/{username}")
  public ResponseEntity<Account> findById(@PathVariable String username) {
    Optional<Account> accountOptional = accountRepository.findAccount(username);
    return accountOptional.map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
  }

  @PostMapping
  public ResponseEntity<Void> createAccount(@RequestBody Account newAccount, UriComponentsBuilder ucb) {
    Account savedAccount = accountRepository.save(newAccount);
    URI locationOfNewAccount = ucb
            .path("/accounts/{username}")
            .buildAndExpand(savedAccount.username())
            .toUri();
    return ResponseEntity.created(locationOfNewAccount).build();
  }
}
