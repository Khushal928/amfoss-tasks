  GNU nano 7.2                             README.MD                                       
in this task, we have to create an image with an arithemetic expression in it.
Then we have to write a python code which scan the picture and return the
evaluated value of expression in the picture


I have used imagemagick to create .png file, image_to_string in pytesseract
to get string from text


I have used imagemagick to create the image <br>
to download imagemagick, sudo apt install imagemagick <br>
convert -background blue -fill red -font Arial -pointsize 30 label:'7+12' captcha.png <br>


to scan images, I have used pytesseract. but to install and use this module, we
need to do it in virtual environment. so to install and use this virtual environment,
 I have used following commands<br>
sudo apt install python3.12 -venv<br>
python3 -m venv myenv<br>
source myenv/bin/activate<br>
to install pytesseract,<br>
pip install pytesseract<br>
we even need another tool to manage with .png files. I have used pillow. to install pillow>
pip install pillow<br>


now that all the tools are installed, here is the code!<br>
import pytesseract<br>
from PIL import Image
imgpointer=Image.open('captchaimg.png')
textinimage=pytesseract.image_to_string
print(textinimage,'=',eval(textinimage))


