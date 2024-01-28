package raveneye.liveflock.TestEntities;

import java.time.LocalDate;

public enum Board {
    SHOULD_PASS(
            1L,
            "Test Title",
            "Test description",
            LocalDate.of(2003,11,20),
            "test/path"
    );
    private final raveneye.liveflock.entity.Board board;

    Board(
            Long id,
            String title,
            String description,
            LocalDate creation_date,
            String avatar
    ) {
        this.board = new raveneye.liveflock.entity.Board(
                id,
                title,
                description,
                creation_date,
                avatar
        );
    };

    public raveneye.liveflock.entity.Board getBoard() {
        return this.board;
    }
}
