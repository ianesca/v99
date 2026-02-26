#!/bin/bash

# Nombre del archivo JAR de Velocity
JAR_NAME="velocity.jar" # Cambia esto al nombre exacto de tu archivo

java -Xms256M -Xmx512M \
-XX:+UseG1GC \
-XX:G1HeapRegionSize=4M \
-XX:+UnlockExperimentalVMOptions \
-XX:+ParallelRefProcEnabled \
-XX:+AlwaysPreTouch \
-XX:MaxInlineLevel=15 \
-jar $JAR_NAME
