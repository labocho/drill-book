#include <iostream>

int main(int argc, char *argv[] ) {
  if (argc < 2) {
    std::cerr << "Argument required\n";
    exit(1);
  }

  int n = std::atoi(argv[1]);

  for (int m = 1; m <= n; ++m) {
    std::string s;

    if (m % 15 == 0) {
      s = "FizzBuzz";
    } else if (m % 5 == 0) {
      s = "Buzz";
    } else if (m % 3 == 0) {
      s = "Fizz";
    } else {
      s = std::to_string(m);
    }

    std::cout << s << "\n";
  }
}
