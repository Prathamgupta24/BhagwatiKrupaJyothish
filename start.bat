@echo off
echo Opening Personal Portfolio Website...
echo.
echo Starting local development server...
echo.

REM Try to open with different browsers
if exist "C:\Program Files\Google\Chrome\Application\chrome.exe" (
    echo Opening with Google Chrome...
    start "Chrome" "C:\Program Files\Google\Chrome\Application\chrome.exe" "index.html"
    goto :end
)

if exist "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" (
    echo Opening with Google Chrome...
    start "Chrome" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "index.html"
    goto :end
)

if exist "C:\Program Files\Mozilla Firefox\firefox.exe" (
    echo Opening with Firefox...
    start "Firefox" "C:\Program Files\Mozilla Firefox\firefox.exe" "index.html"
    goto :end
)

REM Fallback to default browser
echo Opening with default browser...
start "Portfolio" "index.html"

:end
echo.
echo Portfolio website should now be open in your browser!
echo.
echo Tips:
echo - For best development experience, use VS Code with Live Server extension
echo - Replace placeholder images in assets/images/ folder
echo - Customize the content in index.html with your information
echo.
pause
