const Controller = require('egg').Controller;
const fs = require("fs");
const path = require("path");
class podeventController extends Controller {
    //测试获取实际内容
    async log() {
        //获取调用该接口的参数
        let headInfo = JSON.parse(this.ctx.request.body.param);
        // let headInfo = {
        //     flag: 'true',
        //     name: '14华阳经贸MTN001',
        //     type: 'entity', //entity or bond
        //     issuer: '洛娃科技实业集团有限公司', //债券专用
        //     province: '广东省', //主体专用
        //     deadline: '2019-6-10',
        //     defaultMoney: '1.13',
        //     generateDate: '2019-6-10',
        //     industry: '联合三级',
        //     podeventList: [
        //         {
        //         happen_warning_level: '10',
        //         content: '产能过剩、亏损严重/行业低迷，资金链紧张',
        //         time: '2019.07.01'
        //         },{
        //         happen_warning_level: '20',
        //         content: 'balabala',
        //         time: '2019.07.01'
        //         }
        //     ]
        // };
        let resultData = {};
        // 读取base64图片。图片转化base64请使用imgToBase64/output接口
        let imgList = await fs.readFileSync(path.resolve('app/public/img/base64/allImg.txt'));
        imgList = JSON.parse(imgList)||{};
        if(headInfo.flag != 'false') {
            // 数据请求成功
            resultData = {
                title: '联合见智: '+headInfo.name+' 违约历程'
            };
            resultData = {...resultData, ...headInfo};
            for(let i=0; i<resultData.podeventList.length; i++) {
                let item = resultData.podeventList[i];
                if(item.time == null) {
                    item.day = '-';
                    item.mounth = '-';
                } else {
                    let date = item.time.split('.');
                    item.day = date[2]||'-';
                    item.mounth = (date[0]||'-')+'.'+(date[1]||'-');
                }
            }
            // let imgList = await this.ctx.service.imgToBase64.init();
            resultData.imgList = imgList;
            await this.ctx.render('podevent/log.tpl', resultData);
        } else {
            // 数据有误（可能是二维码过期啥的保存，反正错误的都走这个页面）
            // 图片转化base64
            // let imgList = await this.ctx.service.imgToBase64.init("app/public/img/dataError.svg");
            // imgList = imgList||{};
            // let imgList2 = await this.ctx.service.imgToBase64.init("app/public/img/QRCode.jpg");
            // imgList2 = imgList2||{};
            // imgList = {...imgList, ...imgList2};
            resultData = {
                imgList: {
                    dataError: imgList.dataError,
                    QRCode: imgList.QRCode
                }
            };
            await this.ctx.render('podevent/dataError.tpl', resultData);
        }

    }
}

module.exports = podeventController;