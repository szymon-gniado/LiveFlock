package raveneye.liveflock;

import com.jayway.jsonpath.DocumentContext;
import com.jayway.jsonpath.JsonPath;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
class LiveflockApplicationTests {
  @Autowired
  TestRestTemplate restTemplate;

    // In case of request for account that doesn't exist return 404 NOT FOUND
	@Test
	void shouldReturnAccountWhenDataIsSaved() {

    ResponseEntity<String> response = restTemplate.getForEntity("/accounts/1000", String.class);

     DocumentContext documentContext = JsonPath.parse(response.getBody());
     Number id = documentContext.read("$.id");
     assertThat(id).isEqualTo(99);

     String username = documentContext.read("$.username");
     assertThat(username).isEqualTo("xd");

     String avatar = documentContext.read("$.avatar");
     assertThat(avatar).isEqualTo("xd.png");

	}

    @Test
    void shouldNotReturnAccountWithAnUnknownId() {
        ResponseEntity<String> response = restTemplate.getForEntity("/accounts/1000", String.class);

        assertThat(response.getStatusCode()).isEqualTo(HttpStatus.NOT_FOUND);
        assertThat(response.getBody()).isBlank();
    }

}
