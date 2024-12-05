@echo off
setlocal

REM Define the HTML file name
set "htmlFile=gallery.html"

REM Start writing to the HTML file
(
    echo ^<!DOCTYPE html^>
    echo ^<html lang="en"^>
    echo ^<head^>
    echo     ^<meta charset="UTF-8"^>
    echo     ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^>
    echo     ^<title^>Media Gallery^</title^>
    echo     ^<style^>
    echo         body { 
    echo             font-family: Arial, sans-serif; 
    echo             display: flex; 
    echo             flex-wrap: wrap; 
    echo             justify-content: center; 
    echo             background-color: black; 
    echo             color: white;
    echo             margin: 0; 
    echo             padding: 5px; 
    echo         }
    echo         img, video { 
    echo             margin: 5px; 
    echo             max-width: 200px; 
    echo             max-height: 200px; 
    echo             object-fit: cover; 
    echo         }
    echo     ^</style^>
    echo ^</head^>
    echo ^<body^>
) > "%htmlFile%"

REM Loop through image files (.jpg, .png, .gif) and add to HTML
for %%f in (*.jpg *.png *.gif) do (
    echo Adding %%f to %htmlFile%
    echo     ^<img src="%%f" alt="%%~nf"^> >> "%htmlFile%"
)

REM Loop through .mp4 files and add to HTML
for %%f in (*.mp4) do (
    echo Adding %%f to %htmlFile%
    echo     ^<video src="%%f" autoplay loop muted^>Your browser does not support the video tag.^</video^> >> "%htmlFile%"
)

REM Finish the HTML file with JavaScript to pause videos when off-screen
(
    echo ^</body^>
    echo     ^<script^>
    echo         document.addEventListener('DOMContentLoaded', function() {
    echo             const videos = document.querySelectorAll('video');
    echo             const observer = new IntersectionObserver(function(entries) {
    echo                 entries.forEach(function(entry) {
    echo                     if (entry.isIntersecting) {
    echo                         entry.target.play();
    echo                     } else {
    echo                         entry.target.pause();
    echo                     }
    echo                 });
    echo             }, { threshold: 0 });
    echo
    echo             videos.forEach(function(video) {
    echo                 observer.observe(video);
    echo             });
    echo         });
    echo     ^</script^>
    echo ^</html^>
) >> "%htmlFile%"

echo HTML gallery created as "%htmlFile%".
pause
