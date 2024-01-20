from Util import String
from Util import Log
import os
import sys

if __name__ == "__main__":
    param = sys.argv[1]
    include_last = [".ts"]
    for root, dirs, files in os.walk(param):
        for file in files:
            if os.path.splitext(file)[-1] in include_last:
                Log.INFO(file)
                file_path = os.path.join(root, file)
                with open(file_path, encoding="utf8") as f:
                    in_comment = False
                    for line in f.readlines():
                        if "/*" in line and "*/" in line:
                            continue
                        if "/**" in line and "*/" in line:
                            continue
                        if "/**" in String.remove_space(line):
                            in_comment = True
                        if in_comment and String.remove_space(line) == "*/":
                            in_comment = False
                        if "/*" in String.remove_space(line):
                            in_comment = True
                        if in_comment and String.remove_space(line) == "*/":
                            in_comment = False
                        if in_comment:
                            continue
                        if "//" in line:
                            line = line[: line.index("//")]
                        str_list = String.extract_chinese(line)
                        if len(str_list) > 0:
                            print("\t{}".format(str_list))
