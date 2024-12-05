# Create-Media-Gallery-Batch-Script
A simple batch script to generate an HTML media gallery from local images and videos. This script scans the current directory for `.jpg`, `.png`, `.gif`, and `.mp4` files, then creates a responsive HTML page displaying them in a neatly styled gallery format. Videos are automatically paused when they are out of view, improving performance and user experience.


## How to Use the `create_media_gallery.bat` Script

### Prerequisites
- **Windows OS**: This script is written in batch scripting, which runs natively on Windows.
- **Media Files**: Place the images (`.jpg`, `.png`, `.gif`) and video files (`.mp4`) you want in the gallery in the same directory as the batch script.

### Instructions
1. **Download the Script**:
   - Download the `create_media_gallery.bat` file to your local machine.
   
2. **Place Media Files**:
   - Make sure the media files (images and videos) you want to include are in the same folder as the batch script. This script will only process files in its current directory.

3. **Run the Batch File**:
   - Double-click on `create_media_gallery.bat` to execute it.
   - The script will automatically generate a `gallery.html` file in the same folder.

4. **View the Gallery**:
   - Open `gallery.html` in your web browser to see the media gallery.
   - The gallery will display all images and videos from the directory in a responsive format.

### Notes
- **Automatic Pause**: Videos will automatically pause when scrolled out of view to improve browser performance.
- **Output**: The output HTML file is named `gallery.html`. You can rename it if desired after creation.
