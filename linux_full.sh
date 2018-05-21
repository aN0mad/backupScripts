#!/bin/bash

SRC="/home/ryan/test"
DEST="backup"
FILE="backup_files"
EXT=".tar.gz"

echo "[+] Extracting file..."
tar -xf $DEST/$FILE$EXT

echo "[+] Full syncing files..."
rsync -arzI $SRC $DEST/$FILE

echo "[+] Archiving files..."
tar -cf $DEST/$FILE$EXT $DEST/$FILE

echo "[+] Removing uncompressed files..."
rm -r $DEST/$FILE
