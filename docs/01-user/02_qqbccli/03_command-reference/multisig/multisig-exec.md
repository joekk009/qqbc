## multisig-exec子命令功能

执行提案交易

## 顺位项说明

- `proposer` _TEXT_：提案者的账户名（字符串）
- `proposal_name` _TEXT_：提案名称（字符串）
- `executer` _TEXT_：支付执行费用的账户名（字符串）

## 选项说明

- `-h,--help`：输出帮助信息并退出。
- `-x,--expiration` _TEXT_：设置交易过期时间（秒数）。默认为30秒。
- `-f,--force-unique`：强制交易唯一。设置将耗费额外带宽，并去除所有防止多次意外发出同一交易的保护措施。
- `-s,--skip-sign`：指定交易签名是否可以使用解锁的钱包密钥。
- `-d,--dont-broadcast` ：禁止将交易广播到网络中（只是输出到stdout）。
- `-r,--ref-block` _TEXT_ ：设置用于TAPOS的参考区块号（或区块ID）。
- `-p,--permission`  _TEXT_：指定认证的账户和权限，格式为“account@permission”（默认值为“account@active”）。
- `--max-cpu-usage-ms` _UINT_：设置用于执行交易的CPU使用配额上限（微秒数）。默认为0，表示不设置任何限额。
- `--max-net-usage` _UINT_ ：-设置用于执行交易的网络使用配额上限（字节数。默认为0，表示不设置任何限额。
- `--delay-sec` _UINT_：设置延迟时间。默认为0。