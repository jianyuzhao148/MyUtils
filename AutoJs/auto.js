let text = "打卡"
let packname = "com.alibaba.android.rimet"
let text2= "成功"
let text3= "失败"
let save_path = "/sdcard/temp.png"

let force_stop = "强行停止"
let height = device.height
let width = device.width

//设定时间的0-5分钟浮动
min=0
max=5
time = random(min*60*1000,max*60*1000)
toast(time/1000/60+"分钟后执行")
sleep(time)

main()

function main(){
    device.wakeUpIfNeeded()
    app.launch(packname);
    textContains(text).waitFor();
    click(text,0)
    sleep(6000)
    click(width/2,height*0.6)
    sleep(10000)
    cut_screen(save_path)
    kill_app(packname)

    let list = img_text_ocr(save_path,false)
    let flag = false;
    for(let i in list){
        if(list[i].includes(text2)){
            flag == true;
            break;
        }
    }
    send_mail(flag?text2:text3);
    home()
    lockScreen()
}

function send_mail(text) {
    app.sendEmail({
        email: ["836322413@qq.com"],
        subject: "自动打卡消息",
        text: text,
        // attachment:save_path //无法添加附件
    });
    sleep(1000)
    click(width*0.15,height*0.7)
    sleep(2000)
    click(width*0.9,height*0.1)
}

/**
 * 终止APP运行
 * @param {*} packname 
 */
function kill_app(packname) {
    if(app_isrunning(packname)){
        click(force_stop,0)
        sleep(1000)
        click(width*0.73,height*0.93)
        back()
    }
}

/**
 * APP是否再运行中
 * @param {*} packname 
 * @param {*} isback
 * @returns 
 */
function app_isrunning(packname,isback){
    openAppSetting(packname)
    textContains(force_stop).waitFor()
    let enable = textContains(force_stop).findOne().enabled()
    if(isback){
        back()
    }
    return enable
}
// -----------------------------System Util-----------------------------
// ********************系统工具在任何手机上无需修改即可使用********************
/**
 * OCR提取文本
 * @param {*} path_with_name 
 * @param {*} is_release
 * @returns 
 */
function img_text_ocr(path_with_name,is_release){
    let img = images.read(path_with_name)
    let useSlim = true
    const stringList = paddle.ocrText(img, useSlim)
    if(is_release){
        img.recycle()
    }
    return stringList
}

/**
 * OCR识别
 * @param {*} path_with_name 
 * @param {*} is_release 
 * @returns 
 */
function img_ocr(path_with_name,is_release) {
    let img = images.read(path_with_name)
    let useSlim = true
    let result = paddle.ocr(img, useSlim)
    if(is_release){
        img.recycle()
    }
    return result; 
}

/**
 * 获取在当前屏幕中指定文本中心位置
 * @param {*} text 
 * @returns 
 */
function find_text(text){
    let temp = "/sdcard/temp_cut.png"
    let x,y=-1
    if(cut_screen(temp)){
        let data = img_ocr(temp,true)
        data.forEach(function(item) {
            if(text==item.text){
                x=item.bounds.centerX()
                y=item.bounds.centerY()
            }
        })
        return {x:x,y:y}
    }
}

/**
 * 截屏
 * @param {*} path_with_name 
 * @returns 
 */
function cut_screen(path_with_name){
    if(!requestScreenCapture()){
        toast("Request screenshot permission Faild!");
        return false
    }
    captureScreen(path_with_name)
    return true;
}
// -----------------------------System Util-----------------------------