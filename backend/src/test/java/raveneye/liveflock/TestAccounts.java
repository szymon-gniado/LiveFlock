package raveneye.liveflock;

import java.time.LocalDate;
import java.util.UUID;

public enum TestAccounts implements TestAccount {
    SHOULD_PASS(
            1L,
            "foo1@foo.foo",
            "foo1",
            "foo101",
            "foo1",
            LocalDate.of(2023,11,18),
            "foo1.png"
    ),
    ;
    private final Long id;
    private final String email;
    private final String username;
    private final String password;
    private final String display_name;
    private final LocalDate creation_date;
    private final String avatar;
    private TestAccounts(
            Long id,
            String email,
            String username,
            String password,
            String display_name,
            LocalDate creation_date,
            String avatar
    ) {
        this.id = id;
        this.email = email;
        this.username = username;
        this.password = password;
        this.display_name = display_name;
        this.creation_date = creation_date;
        this.avatar = avatar;
    }

    @Override
    public Long getId() {return this.id; }

    @Override
    public String getEmail() {
        return this.email;
    }

    @Override
    public String getUsername() {
        return this.username;
    }

    @Override
    public String getPassword() {
        return this.password;
    }

    @Override
    public String getDisplay_name() {
        return this.display_name;
    }

    @Override
    public LocalDate getCreation_date() {
        return this.creation_date;
    }

    @Override
    public String getAvatar() {
        return this.avatar;
    }
}