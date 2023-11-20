package raveneye.liveflock;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.json.JsonTest;
import org.springframework.boot.test.json.JacksonTester;
import raveneye.liveflock.entity.Account;

import java.io.IOException;
import java.time.LocalDate;

import static org.assertj.core.api.Assertions.assertThat;

@JsonTest
public class AccountJsonTest {

    @Autowired
    private JacksonTester<Account> json;

    Account account = new Account(
            1L,
        "foo1@foo.foo",
        "foo1",
        "foo101",
        "foo1",
            LocalDate.of(2023,11,18),
        "foo1.png"
    );
    @Test
    public void accountSerializationTest() throws IOException {
        assertThat(json.write(account)).isStrictlyEqualToJson("account.json");
        assertThat(json.write(account)).hasJsonPathNumberValue("@.id");
        assertThat(json.write(account)).extractingJsonPathNumberValue("@.id")
                .isEqualTo(TestAccounts.SHOULD_PASS.getId().intValue());
        assertThat(json.write(account)).hasJsonPathStringValue("@.email");
        assertThat(json.write(account)).extractingJsonPathStringValue("@.email")
                .isEqualTo(TestAccounts.SHOULD_PASS.getEmail());
        assertThat(json.write(account)).hasJsonPathStringValue("@.username");
        assertThat(json.write(account)).extractingJsonPathStringValue("@.username")
                .isEqualTo(TestAccounts.SHOULD_PASS.getUsername());
        assertThat(json.write(account)).hasJsonPathStringValue("@.password");
        assertThat(json.write(account)).extractingJsonPathStringValue("@.password")
                .isEqualTo(TestAccounts.SHOULD_PASS.getPassword());
        assertThat(json.write(account)).hasJsonPathStringValue("@.display_name");
        assertThat(json.write(account)).extractingJsonPathStringValue("@.display_name")
                .isEqualTo(TestAccounts.SHOULD_PASS.getDisplay_name());
        assertThat(json.write(account)).hasJsonPathStringValue("@.creation_date");
        assertThat(json.write(account)).extractingJsonPathStringValue("@.creation_date")
                .isEqualTo(TestAccounts.SHOULD_PASS.getCreation_date().toString());
        assertThat(json.write(account)).hasJsonPathStringValue("@.avatar");
        assertThat(json.write(account)).extractingJsonPathStringValue("@.avatar")
                .isEqualTo(TestAccounts.SHOULD_PASS.getAvatar());
    }

    @Test
    public void accountDeserializationTest() throws IOException {
        String expected = """
            {
              "id": 1,
              "email": "foo1@foo.foo",
              "username": "foo1",
              "password": "foo101",
              "display_name": "foo1",
              "creation_date": "2023-11-18",
              "avatar": "foo1.png"
            }
            """;
        assertThat(json.parse(expected))
                .isEqualTo(account);
        assertThat(json.parseObject(expected).id()).isEqualTo(TestAccounts.SHOULD_PASS.getId());
        assertThat(json.parseObject(expected).email()).isEqualTo(TestAccounts.SHOULD_PASS.getEmail());
        assertThat(json.parseObject(expected).username()).isEqualTo(TestAccounts.SHOULD_PASS.getUsername());
        assertThat(json.parseObject(expected).password()).isEqualTo(TestAccounts.SHOULD_PASS.getPassword());
        assertThat(json.parseObject(expected).display_name()).isEqualTo(TestAccounts.SHOULD_PASS.getDisplay_name());
        assertThat(json.parseObject(expected).creation_date()).isEqualTo(TestAccounts.SHOULD_PASS.getCreation_date());
        assertThat(json.parseObject(expected).avatar()).isEqualTo(TestAccounts.SHOULD_PASS.getAvatar());
    }
}