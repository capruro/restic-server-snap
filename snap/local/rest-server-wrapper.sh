#!/bin/bash

CONFIG="$SNAP_COMMON/rest-server.conf"
TEMPLATE="$SNAP/snap/local/rest-server.conf"

if [ ! -f "$CONFIG" ]; then
    cp "$TEMPLATE" "$CONFIG"
fi

OPTIONS=""

if [ -f "$CONFIG" ]; then
    # shellcheck disable=SC1090
    source "$CONFIG"
    [ -n "$REPOSITORY_PATH" ] && OPTIONS="$OPTIONS --path $REPOSITORY_PATH"
    [ "$APPEND_ONLY" = "yes" ] && OPTIONS="$OPTIONS --append-only"
    [ -n "$CPU_PROFILE" ] && OPTIONS="$OPTIONS --cpu-profile $CPU_PROFILE"
    [ "$DEBUG" = "yes" ] && OPTIONS="$OPTIONS --debug"
    [ "$GROUP_ACCESSIBLE_REPOS" = "yes" ] && OPTIONS="$OPTIONS --group-accessible-repos"
    [ -n "$HTPASSWD_FILE" ] && OPTIONS="$OPTIONS --htpasswd-file $HTPASSWD_FILE"
    [ -n "$LISTEN" ] && OPTIONS="$OPTIONS --listen $LISTEN"
    [ -n "$LOG" ] && OPTIONS="$OPTIONS --log $LOG"
    [ -n "$MAX_SIZE" ] && OPTIONS="$OPTIONS --max-size $MAX_SIZE"
    [ "$NO_AUTH" = "yes" ] && OPTIONS="$OPTIONS --no-auth"
    [ "$NO_VERIFY_UPLOAD" = "yes" ] && OPTIONS="$OPTIONS --no-verify-upload"
    [ "$PRIVATE_REPOS" = "yes" ] && OPTIONS="$OPTIONS --private-repos"
    [ "$PROMETHEUS" = "yes" ] && OPTIONS="$OPTIONS --prometheus"
    [ "$PROMETHEUS_NO_AUTH" = "yes" ] && OPTIONS="$OPTIONS --prometheus-no-auth"
    [ -n "$PROXY_AUTH_USERNAME" ] && OPTIONS="$OPTIONS --proxy-auth-username $PROXY_AUTH_USERNAME"
    [ "$TLS" = "yes" ] && OPTIONS="$OPTIONS --tls"
    [ -n "$TLS_CERT" ] && OPTIONS="$OPTIONS --tls-cert $TLS_CERT"
    [ -n "$TLS_KEY" ] && OPTIONS="$OPTIONS --tls-key $TLS_KEY"
    [ -n "$TLS_MIN_VER" ] && OPTIONS="$OPTIONS --tls-min-ver $TLS_MIN_VER"
fi

# shellcheck disable=SC2086
exec "$SNAP/bin/rest-server" $OPTIONS
