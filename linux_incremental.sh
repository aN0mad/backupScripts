#!/bin/bash

SRC="/home/ryan/test"
DEST="backup"
FILE="backup_files"

rsync -arvzu $SRC $DEST/$FILE
