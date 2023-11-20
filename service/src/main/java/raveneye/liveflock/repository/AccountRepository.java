package raveneye.liveflock.repository;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import raveneye.liveflock.entity.Account;

import java.util.Optional;

public interface AccountRepository extends CrudRepository<Account, Long>  {
    @Query("select * from account_view where username = :username")
    Optional<Account> findAccountViewBy(String username);
}