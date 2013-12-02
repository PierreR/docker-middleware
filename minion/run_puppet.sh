#!/bin/sh
puppet agent --server $PUPPET_PORT_8140_TCP_ADDR --environment middleware_local --no-daemonize -d
