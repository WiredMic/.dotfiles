#!/bin/bash
# __        __    _ _                              
# \ \      / /_ _| | |_ __   __ _ _ __   ___ _ __  
#  \ \ /\ / / _` | | | '_ \ / _` | '_ \ / _ \ '__| 
#   \ V  V / (_| | | | |_) | (_| | |_) |  __/ |    
#    \_/\_/ \__,_|_|_| .__/ \__,_| .__/ \___|_|    
#                    |_|         |_|               
#  
# by Rasmus Enevoldsen (2023) 
# ----------------------------------------------------- 

# ----------------------------------------------------- 
# Select wallpaper
# ----------------------------------------------------- 
selected=$(ls -1 $XDG_DATA_HOME/wallpapers | grep "jpg" | wofi --dmenu -p "Wallpapers")

if [ "$selected" ]; then
  echo "Changing theme..."
    # ----------------------------------------------------- 
    # Update wallpaper with pywal
    # ----------------------------------------------------- 
    wal -q -i $XDG_DATA_HOME/wallpapers/$selected

    # ----------------------------------------------------- 
    # Get new theme
    # ----------------------------------------------------- 
    source "$HOME/.cache/wal/colors.sh"
    
    # ----------------------------------------------------- 
    # Copy selected wallpaper into .cache folder
    # ----------------------------------------------------- 
    cp $wallpaper ~/.cache/current_wallpaper.jpg   

    newwall=$(echo $wallpaper | sed "s|$XDG_DATA_HOME/wallpapers/||g")


    # ----------------------------------------------------- 
    # Set the new wallpaper
    # -----------------------------------------------------
echo "test"
echo $wallpapir
echo "test"
    # swaybg -m fill -i $wallpaper

    swww img $wallpaper --transition-step 20 --transition-fps=20
    $HOME/.config/waybar/launch.sh
    sleep 1

    # ----------------------------------------------------- 
    # Send notification
    # ----------------------------------------------------- 
    notify-send "Colors and Wallpaper updated" "with image $newwall"

    echo "Done."
fi

