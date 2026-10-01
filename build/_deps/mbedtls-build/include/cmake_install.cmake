# Install script for directory: D:/ChessGame/build/_deps/mbedtls-src/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/ChessGame")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "C:/msys64/ucrt64/bin/objdump.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mbedtls" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/aes.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/aria.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/asn1.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/asn1write.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/base64.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/bignum.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/block_cipher.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/build_info.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/camellia.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/ccm.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/chacha20.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/chachapoly.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/check_config.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/cipher.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/cmac.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/compat-2.x.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/config_adjust_legacy_crypto.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/config_adjust_legacy_from_psa.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/config_adjust_psa_from_legacy.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/config_adjust_psa_superset_legacy.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/config_adjust_ssl.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/config_adjust_x509.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/config_psa.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/constant_time.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/ctr_drbg.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/debug.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/des.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/dhm.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/ecdh.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/ecdsa.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/ecjpake.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/ecp.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/entropy.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/error.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/gcm.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/hkdf.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/hmac_drbg.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/lms.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/mbedtls_config.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/md.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/md5.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/memory_buffer_alloc.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/net_sockets.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/nist_kw.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/oid.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/pem.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/pk.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/pkcs12.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/pkcs5.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/pkcs7.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/platform.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/platform_time.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/platform_util.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/poly1305.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/private_access.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/psa_util.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/ripemd160.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/rsa.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/sha1.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/sha256.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/sha3.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/sha512.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/ssl.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/ssl_cache.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/ssl_ciphersuites.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/ssl_cookie.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/ssl_ticket.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/threading.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/threading_alt.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/timing.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/version.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/x509.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/x509_crl.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/x509_crt.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/mbedtls/x509_csr.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/psa" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "D:/ChessGame/build/_deps/mbedtls-src/include/psa/build_info.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/psa/crypto.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/psa/crypto_adjust_auto_enabled.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/psa/crypto_adjust_config_dependencies.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/psa/crypto_adjust_config_key_pair_types.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/psa/crypto_adjust_config_synonyms.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/psa/crypto_builtin_composites.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/psa/crypto_builtin_key_derivation.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/psa/crypto_builtin_primitives.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/psa/crypto_compat.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/psa/crypto_config.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/psa/crypto_driver_common.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/psa/crypto_driver_contexts_composites.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/psa/crypto_driver_contexts_key_derivation.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/psa/crypto_driver_contexts_primitives.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/psa/crypto_extra.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/psa/crypto_legacy.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/psa/crypto_platform.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/psa/crypto_se_driver.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/psa/crypto_sizes.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/psa/crypto_struct.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/psa/crypto_types.h"
    "D:/ChessGame/build/_deps/mbedtls-src/include/psa/crypto_values.h"
    )
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/ChessGame/build/_deps/mbedtls-build/include/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
