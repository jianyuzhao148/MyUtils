import os
import shutil

if __name__ == "__main__":
    dir = "."
    # strList = ["ui_button_", "ui_surface_icon_"]
    strList = [""]
    count = 0
    for root, dirs, files in os.walk(dir):
        for file in files:
            for s in strList:
                if file[:len(s)] == s:
                    print(file + "=>" + file[len(s):])
                    # 是否存在文件夹
                    file_name=s[:-1]
                    if not os.path.exists(file_name):
                        os.makedirs(file_name)
                    os.rename(file, file[len(s):])
                    shutil.move(file[len(s):], file_name)
                    count = count + 1
    print("命中" + str(count) + "个文件")
