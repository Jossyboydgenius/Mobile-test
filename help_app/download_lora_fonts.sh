#!/bin/bash

echo "Downloading Lora fonts..."

# Download Lora Regular
curl -s -L "https://fonts.gstatic.com/s/lora/v32/0QIvMX1D_JOuMwr7Ig11cjXK.ttf" -o assets/fonts/Lora-Regular.ttf

# Download Lora Italic  
curl -s -L "https://fonts.gstatic.com/s/lora/v32/0QIhMX1D_JOuMw_hI-oXidzM.ttf" -o assets/fonts/Lora-Italic.ttf

# Download Lora Bold
curl -s -L "https://fonts.gstatic.com/s/lora/v32/0QI6MX1D_JOuMw_hLcquiqXZ.ttf" -o assets/fonts/Lora-Bold.ttf

# Download Lora Bold Italic
curl -s -L "https://fonts.gstatic.com/s/lora/v32/0QI4MX1D_JOuMw_hLemqzibJBg.ttf" -o assets/fonts/Lora-BoldItalic.ttf

echo "Done downloading Lora fonts" 