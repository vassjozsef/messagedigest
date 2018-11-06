#include "messagedigest.h"

int main(int argc, char** argv) {
  auto digest{rtc::MessageDigestFactory::Create(rtc::DIGEST_MD5)};
  return 0;
}
