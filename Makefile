all: favicon.ico
favicon.ico: juantu.16.png juantu.32.png juantu.64.png juantu.128.png 
	convert $^ $@
juantu.128.png: juantu.png
	convert $< -resize 128x128 $@
juantu.64.png: juantu.png
	convert $< -resize 64x64 $@
juantu.32.png: juantu.png
	convert $< -resize 32x32 $@
juantu.16.png: juantu.png
	convert $< -resize 16x16 $@

clean:
	rm -f *.*.png *.ico
