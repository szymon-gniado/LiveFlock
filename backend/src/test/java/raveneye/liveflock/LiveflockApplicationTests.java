package raveneye.liveflock;

import com.jayway.jsonpath.DocumentContext;
import com.jayway.jsonpath.JsonPath;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import raveneye.liveflock.entity.Account;

import java.net.URI;
import java.time.LocalDate;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
class LiveflockApplicationTests {
  @Autowired
  TestRestTemplate restTemplate;

  Account account = new Account(
    1L,
    "foo2@foo.foo",
    "foo2",
    "foo101",
    "foo101",
          LocalDate.of(2023,11,20),
          "foo101.png"
  );

    // In case of request for account that doesn't exist return 404 NOT FOUND
	@Test
	void shouldReturnAccountWhenDataIsSaved() {

        ResponseEntity<String> response = restTemplate.getForEntity("/accounts/foo1", String.class);

        DocumentContext documentContext = JsonPath.parse(response.getBody());
        int id = documentContext.read("$.id");
        String email = documentContext.read("$.email");
        String username = documentContext.read("$.username");
        String password = documentContext.read("$.password");
        String display_name = documentContext.read("$.display_name");
        String avatar = documentContext.read("$.avatar");
        assertThat(id).isEqualTo(account.id().intValue());
        assertThat(email).isEqualTo(account.email());
        assertThat(username).isEqualTo(account.username());
        assertThat(password).isEqualTo(account.password());
        assertThat(display_name).isEqualTo(account.display_name());
        assertThat(avatar).isEqualTo(account.avatar());
	}

    @Test
    void shouldNotReturnAccountWithAnUnknownId() {
        ResponseEntity<String> response = restTemplate.getForEntity("/accounts/101", String.class);

        assertThat(response.getStatusCode()).isEqualTo(HttpStatus.NOT_FOUND);
        assertThat(response.getBody()).isBlank();
    }

    @Test
    void shouldReturnURIofNewAccount() {
        Account newAccount = new Account(
                null,
                "foo2@foo.foo",
                "foo2",
                "foo101",
                "foo101",
                LocalDate.now(),
                "foo101.png"
                );
        ResponseEntity<Void> createResponse = restTemplate.postForEntity("/accounts", newAccount, Void.class);
        assertThat(createResponse.getStatusCode()).isEqualTo(HttpStatus.CREATED);

        URI locationOfNewAccount = createResponse.getHeaders().getLocation();
        ResponseEntity<String> createdAccount = restTemplate.getForEntity(locationOfNewAccount.getPath(), String.class);
        assertThat(createdAccount.getStatusCode()).isEqualTo(HttpStatus.OK);
    }
}
