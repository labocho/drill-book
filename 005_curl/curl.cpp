#include <iostream>
#include <cpprest/http_client.h>

int main(int argc, char** argv) {
  using namespace web::http;

  if (argc < 2) {
    std::cerr << "Argument required";
    exit(1);
  }

  client::http_client c1 { argv[1] };
  auto task { c1.request(web::http::methods::GET) };

  task.then([](http_response res) {
    Concurrency::streams::stringstreambuf buf;
    res.body().read_to_end(buf).wait(); // buf を指定して body を受け取る task を作成して wait
    std::cout << buf.collection(); // buf のデータコンテナである string を取得して出力
  }).wait();
}
