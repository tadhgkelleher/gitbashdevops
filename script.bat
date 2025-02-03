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
