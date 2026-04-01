#!/bin/bash

names=("John" "Mark" "Lee")

echo "${names[@]}"

unset names[1]

names[1]="Michael"

echo "${names[a]}"
