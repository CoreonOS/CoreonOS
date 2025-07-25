#!/bin/sh
mount -t proc none /proc
mount -t sysfs none /sys
mount -t devtmpfs none /dev

echo "Boot OK. Lanzando shell..."
exec /bin/sh
