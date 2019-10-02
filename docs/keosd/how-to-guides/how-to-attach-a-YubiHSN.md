## Goal

Attach a YubiHSM as a hard wallet

## Before you begin

* Install the currently supported version of kleos

* Install YubiHSM2 Software Tookit (YubiHSM2 SDK)

* Create an AuthKey with at least the following Capabilities:

   * sign-ecdsa
   * generate-asymmetric-key
   * export-wrapped

* **Delete the default AuthKey**

[[warning | Security]]
| It is extremately important to create a new AuthKey and remove the default AuthKey before procced to the following steps.

## Steps

### Configure `keosd`

   There are two options to connect `keosd` to YubiHSM:

   #### Using a YubiHSM connector

   By default, `keosd` will connect to the YubiHSM connector on the default host and port. If a non-default URL is used, set the `--yubihsm-url` option or `yubihsm-url` in `config.ini` with the correct connector URL

   #### Directly connect via USB

   `keosd` also can directly connect to YubiHSM via USB protocol

   If this option is used, set `keosd` startup option as the below:

   ```bash
   --yubihsm-url=ysb://
   ```

### Start `keosd` with AuthKey:

   ```bash
   --yubihsm-authkey Your_AuthKey_Object_Number
   ```

   if a YubiHSM connector is used, check the YubiHSM connector is up and running by visiting YubiHSM URL:

      http://YubiHSM_HOST:YubiHSM_PORT/connector/status ((Default HOST and Port: http://127.0.0.1:12345)

   You should see something like below:

   ```bash
   status=OK
   serial=*
   version=2.0.0
   pid=666
   address=localhost
   port=12345
   ```

### Unlock YubiHSM wallet with the password of AuthKey using the following option:

   ```bash
   cleos wallet unlock -n YubiHSM --password YOUR_AUTHKEY_PASSWORD
   ```

   After unlocked the wallet, you can use `cleos wallet` commands as usual. Beware as a part of security mechanism, some wallet subcommands, such as retrieve private keys, or remove a key, are not supported when a YubiHSM is used