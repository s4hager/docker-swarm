#!/bin/bash
service ssh start
echo "SSH Dienst gestartet"
exec "$@"