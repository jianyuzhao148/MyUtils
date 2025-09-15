import os
import glob


def delete_luac_files(folder_path):
    # 使用glob模块查找所有.luac文件
    luac_files = glob.glob(os.path.join(folder_path, '**', '*.luac'), recursive=True)

    # 遍历并删除每个.luac文件
    for luac_file in luac_files:
        try:
            os.remove(luac_file)
            print(f"已删除: {luac_file}")
        except Exception as e:
            print(f"无法删除 {luac_file}: {e}")


# 指定文件夹路径
folder_path = r'E:\FGbf\framework\client_core\frameworks\runtime-src\proj.android-studio\app\assets\src'

# 调用函数删除.luac文件
delete_luac_files(folder_path)