#include <rfl/json.hpp>
#include <rfl/parquet.hpp>

#include <vector>

enum class State { open, closed };

struct Row {
    int id;
    State state;
    bool operator==(const Row&) const = default;
};

int main() {
    const std::vector<Row> rows{{1, State::open}, {2, State::closed}};
    const auto json = rfl::json::write(rows);
    const auto from_json = rfl::json::read<std::vector<Row>>(json);
    if (!from_json || from_json.value() != rows) {
        return 1;
    }
    const auto bytes = rfl::parquet::write(rows);
    const auto decoded = rfl::parquet::read<std::vector<Row>>(bytes);
    return decoded && decoded.value() == rows ? 0 : 1;
}
