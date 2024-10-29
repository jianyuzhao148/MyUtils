"""
重设图片尺寸
"""
import os.path

from Util import Image

if __name__ == "__main__":
    root_dir = (r"D:\FK_VN2\client\AndroidProject_File\framework\client_core\frameworks\runtime-src\proj.android_en\app\src\dfkvn\res")
    size_list = [(144, 144), (144, 144), (192, 192), (256, 256), (512, 512)]
    # dir_list = ["drawable", "mipmap-hdpi", "mipmap-xhdpi", "mipmap-xxhdpi", "mipmap-xxxhdpi"]
    dir_list = ["drawable", "drawable-hdpi", "drawable-xhdpi", "drawable-xxhdpi", "drawable-xxxhdpi"]
    for i in range(0, len(size_list)):
        Image.resize_image(r"D:\test.png", os.path.join(root_dir, dir_list[i]), "icon.png", size_list[i])