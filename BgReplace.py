import os.path

from ripgrepy import Ripgrepy
import xml.etree.ElementTree as ET



def insert_to_file_by(file_path, line_num, context):
    assert os.path.isfile(file_path), "{0} is not a file"
    lines = []
    f = open(file_path, 'r',encoding="gbk",errors='ignore')
    for line in f:
        lines.append(line)
    f.close()
    lines.insert(line_num - 1, context)
    s = ''.join(lines)
    f = open(file_path, 'w+')
    f.write(s)
    f.close()
    del lines[:]


# 根据指定属性获取指定element
def get_xml_child_by(xml_element, tag_name, attr, value):
    for i in xml_element.iter(tag_name):
        for j in i.attrib:
            if j == attr and i.attrib[attr] == value:
                return i


# 获取chile,非递归
# return list
def get_xml_chile(xml_element, tag_name):
    return xml_element.findall(tag_name)


if __name__ == "__main__":
    search_csd_path = "F:\\SLG\\common\\UI-3.10\\cocosstudio"
    search_csd_text = "Path=\"tanchuang2_di.png\""
    search_class_path = "F:\\SLG\\client\\Resources\\res"
    search_class_text = "(self.root, \"{0}/{1}\")"
    csd_text="""<AbstractNodeData Name="node_bg_auto" ctype="ProjectNodeObjectData" >
                <Size X="{0}" Y="{1}" />
                <AnchorPoint />
                <Position X="{2}" Y="{3}" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition />
                <PreSize X="0.0000" Y="0.0000" />
                <FileData Type="Normal" Path="common/WinBG2.csd" Plist="" />
              </AbstractNodeData>\n"""
    result = Ripgrepy(search_csd_text, search_csd_path).line_number().run().as_string
    result_arr = []
    for i in result.split("\r\n"):
        temp_arr = i.split(":")
        if len(temp_arr) == 1:
            break
        temp_arr.pop()
        csd_arr = temp_arr[1].split("\\")
        csd_name = csd_arr[-1].split(".")[-2]
        result2 = Ripgrepy(search_class_text.format(csd_arr[-2], csd_name),
                           search_class_path).line_number().run().as_string
        if result2 == "":
            print("No Find Class for" + csd_name)
            continue
        lua_file = result2.split(":")
        temp_arr.append(lua_file[0] + ":" + lua_file[1])
        temp_arr.append(lua_file[2])
        result_arr.append(temp_arr)

    # 形如:['F', '\\SLG\\common\\UI-3.10\\cocosstudio\\bag\\bag_sell.csd', '292',
    # 'F\\SLG\\client\\Resources\\res\\game\\UI\\bag\\use\\UIBagSell.lua',22]
    for i in result_arr:
        csd_name = i[1].split("\\")[-1]
        flag = input("即将开始处理文件{0},y/n\n".format(csd_name))
        if flag == "y":
            xml_root = ET.parse(i[0] + ":" + i[1]).getroot()
            if i[3]:
                node_name = input("请输入\"tanchuang2_di.png\"的节点名称:")
                child_element = get_xml_child_by(xml_root, "AbstractNodeData", "Name", node_name)
                chile_element_size=get_xml_chile(child_element,"Size")[0]
                width=float(chile_element_size.attrib["X"])
                height=float(chile_element_size.attrib["Y"])

                chile_element_anchor=get_xml_chile(child_element,"AnchorPoint")[0]
                anchor_x=0
                anchor_y=0
                if len(chile_element_anchor.attrib)>0:
                    anchor_x=float(chile_element_anchor.attrib["ScaleX"])
                    anchor_y=float(chile_element_anchor.attrib["ScaleY"])

                chile_element_position=get_xml_chile(child_element,"Position")[0]
                position_x=float(chile_element_position.attrib["X"])
                position_y=float(chile_element_position.attrib["Y"])

                position_x=position_x-(anchor_x*width)
                position_y=position_y-(anchor_y*height)
                insert_to_file_by(i[0]+":"+i[1],int(i[2])+2,csd_text.format(width,height,position_x,position_y))

                # 插入lua
                insert_to_file_by(i[3], int(i[4]) + 4,
                                  '\tself.root.node_bg_auto.title:setString("{0}")\n'.format(
                                      i[3].split("\\")[-1].split(".")[-2]))
            else:
                print(csd_name + "未找到对应的Lua类不进行处理")

    print(result_arr)
