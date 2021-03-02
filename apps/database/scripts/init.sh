#! /bin/bash

flags=("--mutations=strict")

if [ -n "$ALPHA" ]; then
  flags[${#flags[@]}]="--my=$ALPHA"
fi

if [ -n "$ZERO" ]; then
  flags[${#flags[@]}]="--zero=$ZERO"
fi

if [ -n "$WHITELIST" ]; then
  flags[${#flags[@]}]="--whitelist=$WHITELIST"
fi

if [ -n "$SECRET" ]; then
  flags[${#flags[@]}]="--auth_token=$SECRET"
fi

dgraph alpha "${flags[@]}"
