import os
import subprocess

if __name__ == "__main__":
    command_merge = r"TortoiseProc.exe /command:merge /path version/uc/{0} /closeonend:1 /fromurl " \
                    r"svn://192.168.1.200/DG_SLG/trunk/client/Resources/{0}"
    command_commit = r"TortoiseProc.exe /command:commit /path version/uc /closeonend:1"
    command_update = r"TortoiseProc.exe /command:update /path . /closeonend:1"
    command_build = r"gradlew {0}:assembleRelease"
    command_clean = r"gradlew clean"
    channel = "app"

    subprocess.call(command_merge.format("asset"))
    subprocess.call(command_merge.format("res"))
    subprocess.call(command_commit)
    os.chdir("proj.android/proj.android-studio.debug/")
    subprocess.call(command_update)
    subprocess.call(command_clean)
    subprocess.call(command_build.format("app"))
    os.startfile(channel + os.sep + "build" + os.sep + "outputs" + os.sep + "apk" + os.sep + "release")
