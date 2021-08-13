//
// Created by Michael Field on 7/11/21.
//

#include <fmt/format.h>

template <class T>
concept test_concept = std::is_integral_v<T>;

int main() {
  if constexpr (test_concept<int>) {
    fmt::print("Hello {}", "World!");
  }
}