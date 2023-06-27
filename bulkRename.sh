for file in *; 
do 
    mv "$file" "../device_icons/${file%.*}_solid.${file##*.}"; 
done