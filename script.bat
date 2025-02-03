@echo off
if exist fol_1 rmdir /s /q fol_1
if exist fol_2 rmdir /s /q fol_2
mkdir fol_1
mkdir fol_2
type nul > fol_1\1_1.txt
type nul > fol_1\1_2.txt
type nul > fol_1\1_3.txt
type nul > fol_2\2_1.txt
type nul > fol_2\2_2.txt
type nul > fol_2\2_3.txt

:: Set permissions for _1.txt and _3.txt files (read and write by user only)
icacls "fol_1\1_1.txt" /grant "%username%:RW"
icacls "fol_1\1_3.txt" /grant "%username%:RW"
icacls "fol_2\2_1.txt" /grant "%username%:RW"
icacls "fol_2\2_3.txt" /grant "%username%:RW"

:: Set permissions for _2.txt files (read, write, and execute by everyone)
icacls "fol_1\1_2.txt" /grant "Everyone:(R,W,X)"
icacls "fol_2\2_2.txt" /grant "Everyone:(R,W,X)"

echo Job completed
