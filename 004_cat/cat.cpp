#include <fstream>
#include <iostream>
#include <vector>

void cat_istream(std::istream & f) {
  char buf[1024];
  while(!f.eof()) {
    f.read(buf, 1024);
    std::cout.write(buf, f.gcount());
  }
}

void cat_files(const std::vector<std::string> & args) {
  for (const std::string& arg : args) {
    std::ifstream f(arg);
    cat_istream(f);
  }
}

int main(int argc, char *argv[]) {
  if (argc == 1) {
    cat_istream(std::cin);
  } else {
    std::vector<std::string> args(argv + 1, argv + argc);
    cat_files(args);
  }
}
