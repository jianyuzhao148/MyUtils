import os
from PIL import Image


def resize_image(input_image_path, save_path, img_name, size_tuple):
    assert os.path.isfile(input_image_path), input_image_path + "not a file"
    image = Image.open(input_image_path)
    if not os.path.exists(save_path):
        os.makedirs(save_path)
    new_image = image.resize(size_tuple)
    new_image.save(os.path.join(save_path, img_name))
