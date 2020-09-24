# Autopsy-4.16-Install-on-Kali
Installation script for Autopsy 4.16.0 on Kali 2020

Script install-autopsy-4.16.sh completes the following:
  1. Removes sleuthkit. Autopsy 4.16 requires a unique sleuthkit installation that conflicts with the existing sleuthkit.
  2. Adds repository for bellsoft-java8 and installs Java 8.
  3. Downloads sleuthkit Java bindings and Autopsy 4.16.0 and writes them to /tmp.
  4. Installs sleuthkit Java bindings.
  5. Extracts and installs Autopsy 4.16.0 from the downloaded zip file.
  6. Moves Autopsy 4.16.0 to /opt directory and creates a symbolic link to the autopsy binary file to create a command to start autopsy.
  7. Removes downloaded installation files.
  
When complete, Autopsy 4.16.0 can be started with command: autopsy
