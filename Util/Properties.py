# 读取Properties文件类
"""
Properties文件解析工具
"""


def get_properties(self):
    try:
        pro_file = open(self.file_name, 'r', encoding='utf-8')
        properties = {}
        for line in pro_file:
            if line.find('=') > 0:
                strs = line.replace('\n', '').split('=')
                properties[strs[0].strip()] = strs[1].strip()
    except Exception as e:
        raise e
    else:
        pro_file.close()
    return properties
