#include <iostream>

int fib(int n) {
  int a = 1, b = 1;

  for (int i = 3; i <= n; ++i) {
    int c = a + b;
    a = b;
    b = c;
  }

  return b;
}

int main(int argc, char *argv[]) {
  if (argc < 2) {
    std::cerr << "Argument required\n";
    exit(1);
  }

  int n = std::atoi(argv[1]);

  std::cout << fib(n) << "\n";
}
