package raveneye.liveflock;

import org.springframework.data.annotation.Id;

public record Account(@Id Long id, String username, String avatar) {
}
