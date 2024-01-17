import os.path
import subprocess
import xml.etree.ElementTree as ET
import shutil

from Util.Log import Log

plistDict = {}
plistRefDict = {}
curr = ""


def get_xml_all_child_node(xml_path):
    global curr
    curr = xml_path
    assert os.path.isfile(xml_path), Log.error("xml:" + xml_path + " file not exist")
    xmlTree = ET.parse(xml_path)
    xmlRoot = xmlTree.getroot()
    get_xml_all_child_node_loop(xmlRoot)


def get_xml_all_child_node_loop(xml):
    for child in xml:
        if len(child) > 0:
            get_xml_all_child_node_loop(child)
        if ("Type" in child.attrib) and child.attrib["Type"] == "PlistSubImage" and ("/" not in child.attrib["Plist"]):
            add_img_to_plist_set(child.attrib["Plist"], child.attrib["Path"])
    return xml


def add_img_to_plist_set(plist_name, img_name):
    if plist_name not in plistDict:
        plistDict[plist_name] = set()
        plistRefDict[plist_name] = {}
    plistDict[plist_name].add(img_name)
    if img_name not in plistRefDict[plist_name]:
        plistRefDict[plist_name][img_name] = []
    global curr
    plistRefDict[plist_name][img_name].append(curr)


def cut_plist(plist_dir_path, plist_name, out_path):
    assert os.path.isdir(plist_dir_path), "plistDirPath:" + os.path.abspath(plist_dir_path) + " is not a dir"
    if not os.path.isdir(out_path):
        os.makedirs(out_path)

    imgSet = plistDict[plist_name]
    count = 0
    Log.info("开始切割" + plist_name + "文件")
    for root, dirs, files in os.walk(plist_dir_path):
        for file in files:
            for item in imgSet:
                if item.replace("/", "_") == file:
                    if "/" in item:
                        out = out_path + os.sep + plist_name.split(".")[0] + os.sep
                        wdList = item.split("/")
                        for word in wdList[:-1]:
                            out = out + word + os.sep
                    else:
                        out = out_path + os.sep + plist_name.split(".")[0]
                    if not os.path.isdir(out):
                        os.makedirs(out)
                    if copy(os.path.join(root, file), out):
                        os.rename(os.path.join(out, file), os.path.join(out, item.split("/")[-1]))
                        Log.info(
                            file + " => " + out_path + os.sep + plist_name.split(".")[0] + os.sep + item.split("/")[0])
                        count = count + 1
                    else:
                        Log.error(
                            file + " => " + out_path + os.sep + plist_name.split(".")[0] + os.sep + item.split("/")[0])
    Log.info("共" + str(len(imgSet)) + "个文件,命中" + str(count) + "个文件")
    if len(imgSet) != count:
        Log.warn("警告：有" + str(len(imgSet) - count) + "个文件未命中----------------------------------")
        Log.warn(imgSet)


def pack_plist(new_path, plist_name):
    path = os.getcwd()
    os.chdir(new_path)
    for size in [[512, 512], [1024, 1024], [1024, 2048], [2048, 2048]]:
        if subprocess.call("TexturePacker --format cocos2d --texture-format png --data {0}.plist --sheet {0}.png --opt "
                           "RGBA8888 --max-width {1} --max-height {2} --padding 2 {0}".format(plist_name, size[0],
                                                                                              size[1])
                , stderr=subprocess.DEVNULL, stdout=subprocess.DEVNULL, shell=True) == 0:
            break

    flag = os.path.isfile(plist_name + ".plist") and os.path.isfile(plist_name + ".png")
    os.chdir(path)
    return flag


def write_ref_to(ref_path):
    with open(ref_path, "w") as f:
        f.write("通过图片查看引用它的csd\n")
    with open(ref_path, "a") as f:
        for item in plistRefDict:
            for j in plistRefDict[item]:
                f.write(item + "\n\t" + j)
                for k in plistRefDict[item][j]:
                    f.write("\n\t\t" + str(k) + "\n")


def copy(src_file, target_path):
    if not os.path.isdir(target_path):
        os.makedirs(target_path)
    shutil.copy(src_file, target_path)
    return os.path.isfile(os.path.join(target_path, os.path.basename(src_file)))


if __name__ == "__main__":

    """csd文件root目录"""
    csbRootPath = "F:\\SLG\\common\\UI-3.10\\cocosstudio\\"
    """client目录"""
    clientPath = "F:\\SLG\\client\\Resources\\assets\\ui\\"
    """新图集文件夹输出路径"""
    newImgPlistPath = ".\\test\\"
    """生成图片引用文件"""
    refFile = "plistRef.txt"

    Log.info(refFile)

    # if os.path.exists(refFile):
    #     os.remove(refFile)
    # if os.path.exists(newImgPlistPath):
    #     shutil.rmtree(newImgPlistPath)
    #
    # for root, dirs, files in os.walk(csbRootPath):
    #     for file in files:
    #         if file.endswith(".csd"):
    #             get_xml_all_child_node(os.path.join(root, file))
    #
    # write_ref_to(refFile)
    #
    # for i in plistDict:
    #     cut_plist("{0}.{1}_PList.Dir".format(csbRootPath, i.split(".")[0]), i, newImgPlistPath)
    #     if pack_plist(newImgPlistPath, i.split(".")[0]):
    #         log_info("create plist:" + i + " success")
    #         if copy(os.path.join(newImgPlistPath, i.split(".")[0] + ".plist"), csbRootPath) and copy(
    #                 os.path.join(newImgPlistPath, i.split(".")[0] + ".png"), csbRootPath) \
    #                 and copy(os.path.join(newImgPlistPath, i.split(".")[0] + ".plist"), clientPath) and copy(
    #             os.path.join(newImgPlistPath, i.split(".")[0] + ".png"), clientPath):
    #             log_info("copy plist:" + i + " success")
    #         else:
    #             log_error("copy plist:" + i + " fail")
    #
    #     else:
    #         log_error("create plist:" + i + " fail")
