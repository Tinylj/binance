const Controller = require('egg').Controller;
const path = require('path');
const { PDFDocument,rgb,degrees } = require('pdf-lib');
const fs = require('fs');
const TextToSVG = require('text-to-svg');
const svg2png = require("svg2png");
class waterMarkController extends Controller {
    //画图片
    async log() {
        try{
            // Create a new document and add a new page
            const doc = await PDFDocument.create();
            const page = doc.addPage();
            // Load the image and store it as a Node.js buffer in memory
            let img = fs.readFileSync(__dirname +'\\beian.png');
            img = await doc.embedPng(img);

            // Draw the image on the center of the page
            const { width, height } = img.scale(1);
            page.drawImage(img, {
                x: page.getWidth() / 2 - width / 2,
                y: page.getHeight() / 2 - height / 2
            });
            // Write the PDF to a file
            fs.writeFileSync('./test.pdf', await doc.save());
        }
        catch (e) {
            console.log(e);
        }

    }
    //测试新老版本问题 测试地址 127.0.0.1:7001/waterMark/log2  drawText测试
    async log2() {
        try{
            let existBytes = fs.readFileSync(__dirname + '\\old_version.pdf');
            let existBytes2 = fs.readFileSync(__dirname + '\\a.pdf');
            let amd = existBytes.toString();
            let amd2 = existBytes2.toString();

            // console.log(amd);
            // console.log(amd2);

            // await this.ctx.service.outputTxt.output(amd, "老版本打印", "./");
            // await this.ctx.service.outputTxt.output(amd2, "新版本打印", "./");
            const content = await PDFDocument.load(existBytes2,{ ignoreEncryption: true });
            // Add a font to the doc
            // const helveticaFont = await content.embedFont(StandardFonts.Helvetica);
            // Draw a number at the bottom of each page.
            // Note that the bottom of the page is `y = 0`, not the top
            const pages = await content.getPages();
            for (const [i, page] of Object.entries(pages)) {
                let width = page.getWidth();
                let height = page.getHeight();
                for (let i = 0; i < width; i += 200) {
                    for (let j = 0; j < height; j += 200) {
                        // 填充文字，x 间距, y 间距
                        page.drawText(`luj1235`, {
                            x: i,
                            y: j,
                            size: 12,
                            // font: helveticaFont,
                            color: rgb(0, 0, 0),
                            opacity: 0.2,
                            rotate:degrees(15),
                            blendMode:"Exclusion",
                        });
                    }
                }

            }

            // Write the PDF to a file
            fs.writeFileSync('./test2.pdf', await content.save());
        }
        catch (e) {
            console.log(e);
        }

    }
    //思路，利用textToSvg 然后用drawSvgPath
    async log3() {
        try
        {
            const textToSVG = TextToSVG.loadSync();
            const options = {x: 0, y: 0, fontSize: 10, anchor: 'top'};
            const svgPath = textToSVG.getD('lujTest1234', options);
            let existBytes2 = fs.readFileSync(__dirname + '\\a.pdf');
            const content = await PDFDocument.load(existBytes2,{ ignoreEncryption: true });
            const pages = await content.getPages();
            for (const [i, page] of Object.entries(pages)) {
                let width = page.getWidth();
                let height = page.getHeight();
                for (let i = 0; i < width; i += 200) {
                    for (let j = 0; j < height; j += 200) {
                        // 填充文字，x 间距, y 间距
                        page.drawSvgPath(svgPath, {
                            x: i,
                            y: j,
                            borderColor: rgb(0, 0, 0),
                            borderWidth: 0.5,
                            borderOpacity: 0.2,
                        })
                    }
                }

            }

            // Write the PDF to a file
            fs.writeFileSync('./test2.pdf', await content.save());
        }
        catch (e) {
            console.log(e);
        }
    }
    //思路，利用textToSvg  再转个图片。然后用drawImage
    async log4() {
        let mck = this.ctx.query.fileName || "a";
        const textToSVG = TextToSVG.loadSync();
        const svgPath = textToSVG.getSVG('lujTest4567', {
            x: 0,
            y: 0,
            fontSize: 120,
            anchor: 'top',
        });
        const buffer1 = await svg2png(svgPath);
        const existBytes2 = fs.readFileSync(__dirname + '\\' + mck + '.pdf');
        const content = await PDFDocument.load(existBytes2,{ ignoreEncryption: true });
        const img = await content.embedPng(buffer1);
        const pages = await content.getPages();
        for (const [i, page] of Object.entries(pages)) {
            let width = page.getWidth();
            let height = page.getHeight();
            for (let i = 0; i < width; i += 200) {
                for (let j = 0; j < height; j += 200) {
                    // 填充文字，x 间距, y 间距
                    page.drawImage(img, {
                        x: i,
                        y: j,
                        width:img.width/12,
                        height:img.height/12,
                        rotate: degrees(15),
                        opacity: 0.25,
                    })
                }
            }

        }
        // Write the PDF to a file
        fs.writeFileSync('./test' + mck + '.pdf', await content.save());
    }
}

module.exports = waterMarkController;