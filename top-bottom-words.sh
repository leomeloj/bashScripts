#!/usr/bin/env bash

NUM_WORDS=$1
FILE=$2

echo "The top "$NUM_WORDS" words are \n"
cat $FILE | tr -c '[:alnum:]' '[\n*]' | sort | uniq -c | sort -nr | head -n $NUM_WORDS

echo "The bottom "$NUM_WORDS" words are \n"
cat $FILE | tr -c '[:alnum:]' '[\n*]' | sort | uniq -c | sort -n | head -n $NUM_WORDS
