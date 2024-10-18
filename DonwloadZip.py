import hashlib
import shutil
import zipfile

import requests
import tempfile

import os


def downloadZip(url: str) -> zipfile.ZipFile:
    print(url)
    response = requests.get(url)
    file = tempfile.TemporaryFile()
    file.write(response.content)
    return zipfile.ZipFile(file, mode="r")


def get_md5(file_name):
    with open(file_name, 'rb') as fp:
        data = fp.read()
    return hashlib.md5(data).hexdigest()


if __name__ == "__main__":
    src_lib_path = "libslua.so"
    "1.7.0,1.6.2"
    version_list = ["1.6.1", "1.6.0",
                    "1.5.5", "1.5.4", "1.5.3", "1.5.2", "1.5.1", "1.5.0",
                    "1.3.3", "1.3.2", "1.3.1", "1.3.0",
                    "1.2.0",
                    "1.1.1",
                    "1.0.7", "1.0.5", "1.0.4",
                    "0.8.9.2", "0.8.9.1", "0.8.9", "0.8.8", "0.8.7", "0.8.6", "0.8.4", "0.8.5",
                    "0.8.3", "0.8.2", "0.8.1", "0.8",
                    "0.7.3", "0.7.2"]
    src_md5 = get_md5(src_lib_path)
    for i in version_list:
        if os.path.exists("zip"):
            shutil.rmtree("zip")
        print("=={}==".format(i))
        lib_path = "zip/slua-{}/Assets/Plugins/Android/libs/armeabi-v7a/libslua.so".format(i)
        # zip_file = downloadZip("https://codeload.github.com/pangweiwei/slua/zip/refs/tags/v{}".format(i))
        zip_file = downloadZip("https://github.com/pangweiwei/slua/archive/refs/tags/v{}.zip".format(i))
        zip_file.extractall("zip")
        if os.path.exists(lib_path):
            print(src_md5 == get_md5(lib_path))
        zip_file.close()
