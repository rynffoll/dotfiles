#!/bin/bash

signingkey="$(git config --type=path --get user.signingkey)"
[ -f "$signingkey" ] || { echo "signing key not found: $signingkey" >&2; exit 1; }
pubkey="$(<"$signingkey")"
email="$(git config --get user.email)"
allowed_signers="$(git config --type=path --get gpg.ssh.allowedSignersFile)"

grep -q "$pubkey" "$allowed_signers" || echo "$email namespaces=\"git\" $pubkey" >> "$allowed_signers"
