@echo off
title PPLG 2 Local Server
echo ==========================================
echo        PPLG 2 - LOCAL WEBSITE
echo ==========================================
echo.
echo Membuka server lokal di port 5500...
echo Buka di laptop: http://localhost:5500
echo.
echo Jika ingin memakai HP via USB + ADB:
echo 1. Aktifkan USB Debugging di HP.
echo 2. Install ADB di laptop.
echo 3. Jalankan: adb reverse tcp:5500 tcp:5500
echo 4. Buka Chrome di HP: http://127.0.0.1:5500
echo.
echo Tekan Ctrl+C untuk menghentikan server.
echo.
python -m http.server 5500 --bind 0.0.0.0
pause
