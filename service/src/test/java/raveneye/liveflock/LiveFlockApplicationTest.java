package raveneye.liveflock;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import raveneye.liveflock.Entities.Account;

import java.net.URI;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
class ApplicationTest {
    @Autowired
    TestRestTemplate restTemplate;

    @Test
    void shouldReturnURIofNewAccount() {
        Account newAccount = new Account(
                null,
                "user1"
        );
        ResponseEntity<Void> createResponse = restTemplate.postForEntity("/accounts", newAccount, Void.class);
        assertThat(createResponse.getStatusCode()).isEqualTo(HttpStatus.CREATED);

        URI locationOfNewAccount = createResponse.getHeaders().getLocation();
        ResponseEntity<String> createdAccount = restTemplate.getForEntity(locationOfNewAccount.getPath(), String.class);
        assertThat(createdAccount.getStatusCode()).isEqualTo(HttpStatus.OK);
    }
}