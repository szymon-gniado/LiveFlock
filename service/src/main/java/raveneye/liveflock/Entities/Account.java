package raveneye.liveflock.Entities;

import org.springframework.data.annotation.Id;

public record Account(
        @Id
        Long id,
        String username
) {
}
