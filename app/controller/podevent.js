const Controller = require('egg').Controller;
const CryptoJS = require('crypto-js');
const QRCode = require('qrcode')
const cheerio = require('cheerio');
class podeventController extends Controller {
    //测试获取实际内容
    async log() {
        //获取调用该接口的参数
        const param = this.ctx.query.param;

        // 这里返回的如果是一个有问题的效果该如何展示
        const key = CryptoJS.enc.Utf8.parse("1234123412ABCDEF");  //十六位十六进制数作为密钥
        const iv = CryptoJS.enc.Utf8.parse('ABCDEF1234123412');   //十六位十六进制数作为密钥偏移量
        //解密方法
        let Decrypt = (word)=> {
            let encryptedHexStr = CryptoJS.enc.Hex.parse(word);
            let srcs = CryptoJS.enc.Base64.stringify(encryptedHexStr);
            let decrypt = CryptoJS.AES.decrypt(srcs, key, { iv: iv, mode: CryptoJS.mode.CBC, padding: CryptoJS.pad.Pkcs7 });
            let decryptedStr = decrypt.toString(CryptoJS.enc.Utf8);
            return decryptedStr.toString();
        };
        let decryptWord = Decrypt(param);
        console.log(decryptWord);
        let strs = decryptWord.split("&");

        //获取compCode
        let compCode = strs[0].split("=")[1];
        //获取时间
        let sTime = strs[1].split("=")[1];

        //是否过期，date1,外界时间(unix时间戳)，num过期天数
        function ifExpire(date1,num){
            //第一次请求的时间
            let expireDate = new Date((date1.substr(0,10))*1000);
            //第一次请求的过期时间
            expireDate.setDate(expireDate.getDate() + num);
            //当前时间
            let cnow = new Date();

            //如果当前时间大于过期时间，则过期了
            if(cnow.getTime() > expireDate.getTime()){
                return true;
            } else {
                return false;
            }
        }
        //如果过期了，返回过期了。先设定个1天内失效
        if(ifExpire(sTime,1)) {
            this.ctx.body = "该链接已失效";
        }
        else {
            const dataList = await this.ctx.service.podevent.log(compCode);
            await this.ctx.render('podevent/log.tpl', dataList);
        }
    }
    //获取二维码
    async getQRCode() {
        const compCode = this.ctx.query.compCode;
        let t1 = new Date().getTime();
        let beforeWord = `compCode=${compCode}&sTime=${t1}`;

        const key = CryptoJS.enc.Utf8.parse("1234123412ABCDEF");  //十六位十六进制数作为密钥
        const iv = CryptoJS.enc.Utf8.parse('ABCDEF1234123412');   //十六位十六进制数作为密钥偏移量
        //加密方法
        let Encrypt =(word)=> {
            let srcs = CryptoJS.enc.Utf8.parse(word);
            let encrypted = CryptoJS.AES.encrypt(srcs, key, { iv: iv, mode: CryptoJS.mode.CBC, padding: CryptoJS.pad.Pkcs7 });
            return encrypted.ciphertext.toString().toUpperCase();
        };
        console.log(beforeWord);
        let encryptWord = Encrypt(beforeWord);
        let returnUrl = `http://127.0.0.1:7001/podevent/log?param=${encryptWord}`;
        let myurl = "";
        //生成二维码
        await QRCode.toDataURL(returnUrl).then(url => {
            myurl = url;
            console.log(url)
        }).catch(err => {
            console.error(err)
        });
        await this.ctx.render('podevent/getQRCode.tpl', {myurl:myurl,description:returnUrl});
    }
}

module.exports = podeventController;