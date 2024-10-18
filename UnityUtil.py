import json
import os

from openpyxl import Workbook
import UnityPy
import yaml
import openpyxl
import pandas as pd

sheetList = ["Enemy", "Item", "LevelBuff", "Level", "Hero", "HeroSkill", "LevelUnlock"]
path = r"E:\Project\client\rs_main\Assets\ConfigJson"
out_path = r"E:\Project\client\rs_main\Assets\ConfigJson\OutExcel"


def ToExcel():
    for file_name in os.listdir(path):
        if file_name.endswith(".json"):
            file = os.path.join(path, file_name)
            file_name = file_name.split(".")[0]
            with open(file, "r") as f:
                jsonData = json.loads(f.readline())
            items = jsonData["_configs"]["_values"][0]
            wb = Workbook()
            ws = wb.active
            ws.title = file_name
            ws.append(list(items.keys()))

            def convert_value(value):
                return str(value)

            for i in jsonData["_configs"]["_values"]:
                values = list(i.values())
                values = [convert_value(value) for value in values]
                ws.append(values)
            wb.save("{}.xlsx".format(file_name))


# def loadAssets():
#     with open(r"E:\Project\client\rs_main\Assets\HotRes\Uncharted\UC_Configs\Enemy.asset", 'rb') as f:
#         content = yaml.safe_load(f)
#     print(content)


def loadExcel(excel_name):
    df = pd.read_excel(excel_name)
    with open("a.txt", 'w') as f:
        dict_list = df.to_dict(orient="records")
        for i in dict_list:
            for k, v in i.items():
                i[k] = json.load(v)
        values_dict = {"_values": dict_list}
        configs_dict = {"_configs": values_dict}
        f.write(json.dumps(configs_dict))


if __name__ == "__main__":
    # for i in sheetList:
    #     create_unity_assets(i)
    # loadAssets()
    # loadExcel("Hero.xlsx")
    ToExcel()