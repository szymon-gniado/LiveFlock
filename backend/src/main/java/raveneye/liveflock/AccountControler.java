package raveneye.liveflock;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/accounts")
public class AccountControler {

  @GetMapping("/{requestedId}")
  public ResponseEntity<Account> findById(@PathVariable Long requestedId) {
    Account account = new Account(99L, "xd", "xd.png");
    return (requestedId.equals(99L)) ? ResponseEntity.ok(account) : ResponseEntity.notFound().build();
  }
}
