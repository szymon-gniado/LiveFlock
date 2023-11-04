package raveneye.liveflock;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.json.JsonTest;
import org.springframework.boot.test.json.JacksonTester;

import java.io.IOException;

import static org.assertj.core.api.Assertions.assertThat;

@JsonTest
public class AccountJsonTest {

    @Autowired
    private JacksonTester<Account> json;

    @Test
    public void accountSerializationTest() throws IOException {
        Account account = new Account(99L, "xd", "xd.png");
        assertThat(json.write(account)).isStrictlyEqualToJson("expected.json");
        assertThat(json.write(account)).hasJsonPathNumberValue("@.id");
        assertThat(json.write(account)).extractingJsonPathNumberValue("@.id")
                .isEqualTo(99);
        assertThat(json.write(account)).hasJsonPathStringValue("@.username");
        assertThat(json.write(account)).extractingJsonPathStringValue("@.username")
                .isEqualTo("xd");
        assertThat(json.write(account)).hasJsonPathStringValue("@.avatar");
        assertThat(json.write(account)).extractingJsonPathStringValue("@.avatar")
                .isEqualTo("xd.png");
    }

    @Test
    public void accountDeserializationTest() throws IOException {
        String expected = """
           {
               "id":99,
               "username":"xd",
               "avatar":"xd.png"
           }
           """;
        assertThat(json.parse(expected))
                .isEqualTo(new Account(99L, "xd", "xd.png"));
        assertThat(json.parseObject(expected).id()).isEqualTo(99);
        assertThat(json.parseObject(expected).username()).isEqualTo("xd");
        assertThat(json.parseObject(expected).avatar()).isEqualTo("xd.png");
    }
}