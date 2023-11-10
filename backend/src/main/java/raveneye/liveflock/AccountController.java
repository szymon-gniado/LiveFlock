package raveneye.liveflock;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Optional;

@RestController
@RequestMapping("/accounts")
public class AccountController {
  private final AccountRepository accountRepository;

  public AccountController(AccountRepository accountRepository) {
    this.accountRepository = accountRepository;
  }

  @GetMapping("/{id}")
  public ResponseEntity<Account> findById(@PathVariable Long id) {
    Optional<Account> accountOptional = accountRepository.findById(id);
    return accountOptional.map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
  }
}
