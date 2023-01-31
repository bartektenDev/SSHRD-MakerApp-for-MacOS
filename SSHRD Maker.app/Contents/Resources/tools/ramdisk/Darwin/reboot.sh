

#@ios_euphoria SSHRD reboot script

#stop asking me if i want to fucking save the damn key
rm -rf ~/.ssh/known_hosts

# Change the current working directory
cd "`dirname "$0"`"

sleep 1

echo ''

echo 'Starting iproxy...'

# Run iproxy in the background
./iproxy 2222:22 > /dev/null 2>&1 &

sleep 2

while true ; do
  result=$(ssh -p 2222 -o BatchMode=yes -o ConnectTimeout=1 -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null root@localhost echo ok 2>&1 | grep Connection)

  if [ -z "$result" ] ; then

echo 'Killall...'
./sshpass -p 'alpine' ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null root@localhost -p 2222 '/sbin/reboot' > /dev/null 2>&1

sleep 1

# Kill iproxy
kill %1 > /dev/null 2>&1

echo 'Done!'
sleep 1

    break

  fi

  echo "reboot script FAILED"
  break

  sleep 1

done
