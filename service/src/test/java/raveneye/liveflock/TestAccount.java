package raveneye.liveflock;

import java.time.LocalDate;
import java.util.UUID;

public interface TestAccount {
    public Long getId();
    public String getEmail();
    public String getUsername();
    public String getPassword();
    public LocalDate getCreation_date();
    public String getDisplay_name();
    public String getAvatar();


}
