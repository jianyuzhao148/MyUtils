import os
import re

root_path = r"C:\Users\zhaoj\Desktop\shengwang\assets\res\spine"
sign_str = "cocos"
key_str = "JYDYdpyRecDuHQc8"
file_type = "png"
root_out_path = "E"


def testSign(path, sign):
    if os.path.exists(path):
        with open(path, "rb") as f:
            data = f.read()
            return str(data[:len(sign)])[2:-1] == sign
    else:
        print("testSign path:{}不存在", path)
    return False


if __name__ == "__main__":
    # for root, dirs, file in os.walk(root_path):
    #     for f in file:
    #         full_path = os.path.join(root, f)
    #         out_path = root_out_path + full_path[1:]
    #         if f.split(".")[-1] == file_type and testSign(full_path, sign_str):
    with (open(r"E:\NewTest\czzj\missTest.txt") as f):
        line = f.readline()
        while line:
            match = re.search(r'"([^"_:.]+)"', line)
            if match:
                for miss in match.groups():
                    if len(miss) == 16:
                        print(miss)
                        if 0 == os.system(
                                "missing.exe {} {} {} {}".format(r"E:\NewTest\czzj\assets\res\raw-assets\resources"
                                                                 r"\actiondial"
                                                                 r"\actiondial.png", sign_str, miss,
                                                                 "d:\\aa\\{}".format("a.png"))):
                            print("YES")
                            break
                        else:
                            print("NO")
            line = f.readline()

# from pyvram import PVRLoader
# import zlib
# from PIL import Image
#
# def decompress_pvr_ccz(pvr_ccz_filename):
#     with open(pvr_ccz_filename, 'rb') as f:
#         magic = f.read(4)
#         compressed_data = f.read()
#
#     # 解压缩数据
#     decompressed_data = zlib.decompress(compressed_data)
#
#     # 解码 PVR 格式
#     pvr_loader = PVRLoader()
#     decoded_data = pvr_loader.load(decompressed_data)
#
#     return decoded_data
#
# def save_as_png(decoded_data, png_filename):
#     image = Image.frombytes('RGBA', (decoded_data.width, decoded_data.height), decoded_data.data)
#     image.save(png_filename)
#
# decoded_data = decompress_pvr_ccz('example.pvr.ccz')
# save_as_png(decoded_data, 'example.png')
