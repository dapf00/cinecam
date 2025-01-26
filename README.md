# CineCam-Godot
CineCam-Godot is a camera app for the CinePi-Camera. To use it, you need this [fork]() of CinePi-RAW and this [Extension]() for Godot. 
# Build Instructions
Download Godot 4.4dev7 or later from [here](https://godotengine.org/download/archive/).
Build the CinePi-RAW-Fork and the Extension. Copy the .so file that you built to the /bin folder from this repository. Then launch the Godot executable that you downloaded, and then go the the folder of this repository and open then project.
If you want to export a binary from the project, you can do so under Project>Export, and read about [exporting projects](https://docs.godotengine.org/en/stable/tutorials/export/exporting_projects.html#export-templates) in the godot documentation.
# Usage
Start CinePi-RAW before starting the App-Preview from the Godot Editor or the exported executable. To record footage, the storage medium needs to be mounted to /media/RAW and you need read/write permissions.
