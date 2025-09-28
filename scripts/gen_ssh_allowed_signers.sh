#!/bin/bash

email=$(git config --get user.email)
signingkey=$(git config --get user.signingkey | sed "s|^~|$HOME|" | xargs cat)

echo "${email} namespaces=\"git\" ${signingkey}" >> ~/.ssh/allowed_signers
