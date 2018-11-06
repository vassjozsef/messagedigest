MessageDigest
=============

Tracking down WebRTC compile errors with OpenSSL.

Using OpenSSL 1.1.0i (14 Aug 2018), built from source. Also tested with brewed OpenSSL 1.1.1 (11 Sep 2018).

I made two changes to build:
- Need to use pointer for `EVP_MD_CTX` in `OpenSSLDigest`.
- Replace EVP_MD_CTX_cleanup() with EVP_MD_CTX_destroy() in `OpenSSLDigest::~OpenSSLDigest()` (`EVP_MD_CTX_cleanup()` was removed).
