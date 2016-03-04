# jwk-tool

Command line tools for operating JSON Web Key

# Install

    gem install jwk-tool

# Usage

The following command generate key pairs, private key 'key' and public key 'key.pub' into the current folder.

    jwk_tool -g -k key
    jwk_tool --generate --key=key

To use the keys as JSON Web Key (JSON::JWK) defined in json-jwk, just read files, parse them and then pass to the initialization method.

An encryption example at sender node using public key.

```ruby
require 'json/jwk'
# read public key from file
jwk_pub = JSON::JWK.new(JSON.parse(open('hoge.pub').read))
# encrypt plain text "hogehogefoofoo"
jwe = JSON::JWE.new("hogehogefoofoo")
# choose block cipher algorithm
jwe.enc = :A128GCM
# choose cipher algorithm for encrypting block cipher key (symmetric cipher key)
jwe.alg = :RSA1_5
# encryption
jwe.encrypt!(jwk_pub.to_key)
# output the result in JSON format
json = jwe.as_json.to_json
```

A decryption example at receiver node using private key.

```ruby
require 'json/jwk'
# read private key from file
jwk = JSON::JWK.new(JSON.parse(open('hoge').read))
# decrypt JSON format cipher data
jwe_dec = JSON::JWE.decode_json_serialized(JSON.parse(json), jwk.to_key)
# obtain the original plain text
jwe_dec.plain_text
```
