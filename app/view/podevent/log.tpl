<html>
    <head>
        <title>{{title}}</title>
        <link rel="shortcut icon" type="image/x-icon" href="{{imgList.favicon}}" rel="external nofollow" />
        <meta charset="utf-8">
        <meta name="description" content="联合见智 违约历程"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1,minimum-scale=1,user-scalable=0">
        <meta http-equiv="cache-control" content="no-cache">
        <style>
            html,
            body {
            margin: 0;
            padding: 0;
            font-size: .2rem;
            font-family: Helvetica, sans-serif, Arial;
            text-align: center;
            line-height: 1;
            overflow-x: hidden;
            letter-spacing: 0.01rem;
            background-color: #F5F5F5;
            }
            .podevent-main {
                display: none;
            }
            html h1,
            body h1,
            html h2,
            body h2,
            html h3,
            body h3,
            html h4,
            body h4,
            html h5,
            body h5,
            html h6,
            body h6,
            html p,
            body p {
            padding: 0;
            margin: 0;
            font-weight: normal;
            }
            html .max-width,
            body .max-width {
            max-width: 6rem!important;
            position: relative;
            text-align: left;
            display: block;
            margin-left: auto;
            margin-right: auto;
            }
            .podevent-head {
            position: relative;
            height: 4.73rem;
            background: red linear-gradient(#f83325, #ff5c5c);
            }
            .podevent-head .head-body {
            width: calc(100% - 0.6rem);
            height: 100%;
            z-index: 2;
            padding: 0.6rem 0.3rem;
            position: relative;
            }
            .podevent-head .podevent-logo {
            display: inline-block;
            position: absolute;
            right: 0.2rem;
            top: 0.2rem;
            width: 1rem;
            }
            .podevent-head .podevent-title {
            font-size: 0.24rem;
            color: #ffffff;
            font-weight: bold;
            }
            .podevent-head .podevent-name {
            font-weight: bold;
            padding-top: 0.26rem;
            padding-bottom: 0.2rem;
            color: #ffffff;
            line-height: 0.35rem;
            font-size: 0.3rem;
            width: 2.3rem;
            display: -webkit-box;
            -webkit-box-orient: vertical;
            -webkit-line-clamp: 3;
            overflow: hidden;
            height: 1.05rem;
            }
            .podevent-head .podevent-info .podevent-info-item {
            font-size: 0.14rem;
            }
            .podevent-head .podevent-info .podevent-info-item td {
            margin: 0;
            padding: 0;
            }
            .podevent-head .podevent-info .podevent-info-item .podevent-info-item-name {
            width: 1.1rem;
            vertical-align: text-top;
            color: #ffc7c7;
            }
            .podevent-head .podevent-info .podevent-info-item .podevent-info-item-content {
            vertical-align: text-top;
            color: #ffffff;
            width: 1.2rem;
            line-height: 0.2rem;
            word-break: break-all;
            display: -webkit-box;
            -webkit-box-orient: vertical;
            -webkit-line-clamp: 3;
            overflow: hidden;
            }
            .background-body {
            z-index: 1;
            width: 100%;
            height: 100%;
            position: absolute;
            top: 0;
            left: 0;
            }
            .background-body .background-img-left {
            width: 4rem;
            height: 4rem;
            position: absolute;
            top: -3rem;
            right: calc(50% - 0.5rem);
            }
            .background-body .background-img-left img {
            width: 100%;
            }
            .background-body .background-img-bottom {
            width: 5.5rem;
            height: 3.3rem;
            overflow-y: hidden;
            position: absolute;
            bottom: 0;
            left: calc(50% - 1.5rem);
            }
            .background-body .background-img-bottom img {
            width: 100%;
            }
            .background-body .background-img-footer {
            width: 3.75rem;
            overflow-y: hidden;
            position: absolute;
            bottom: 0;
            left: calc(50% - 1.875rem);
            }
            .background-body .background-img-footer img {
            width: 100%;
            }
            .podevent-body {
            padding: 0 0.1rem;
            margin-top: -0.92rem;
            z-index: 6;
            }
            .podevent-body .podevent-box-item {
            padding: 0.25rem;
            padding-left: 0.2rem;
            margin-bottom: 0.1rem;
            border-radius: 0.05rem;
            background-color: #ffffff;
            }
            .podevent-body .podevent-box-item .podevent-box-time {
            display: inline-block;
            width: 0.58rem;
            vertical-align: text-top;
            color: #3d3e4c;
            }
            .podevent-body .podevent-box-item .podevent-box-time .podevent-box-day {
            font-size: 0.24rem;
            font-weight: bold;
            }
            .podevent-body .podevent-box-item .podevent-box-time .podevent-box-mounth {
            font-size: 0.12rem;
            line-height: 0.2rem;
            color: #999;
            letter-spacing: 0;
            }
            .podevent-body .podevent-box-item .podevent-box-content {
            display: inline-block;
            width: calc(100% - 0.66rem);
            vertical-align: text-top;
            }
            .podevent-body .podevent-box-item .podevent-box-content .podevent-box-level .wariningLevel-icon {
            height: 0.2rem;
            vertical-align: top;
            }
            .podevent-body .podevent-box-item .podevent-box-content .podevent-box-level .wariningLevel-world {
            font-size: 0.18rem;
            font-weight: bold;
            }
            .podevent-body .podevent-box-item .podevent-box-content .podevent-box-level .wariningLevel-world.gray {
            color: #CCC;
            }
            .podevent-body .podevent-box-item .podevent-box-content .podevent-box-level .wariningLevel-world.red {
            color: #f93629;
            }
            .podevent-body .podevent-box-item .podevent-box-content .podevent-box-level .wariningLevel-world.yellow {
            color: #FFA400;
            }
            .podevent-body .podevent-box-item .podevent-box-content .podevent-box-level .wariningLevel-world.blue {
            color: #0084ff;
            }
            .podevent-body .podevent-box-item .podevent-box-content .podevent-box-level .wariningLevel-world.green3 {
            color: #43a047;
            }
            .podevent-body .podevent-box-item .podevent-box-content .podevent-box-level .wariningLevel-world.green2 {
            color: #66BB6A;
            }
            .podevent-body .podevent-box-item .podevent-box-content .podevent-box-level .wariningLevel-world.green1 {
            color: #81C784;
            }
            .podevent-body .podevent-box-item .podevent-box-content .podevent-box-level .wariningLevel-world.green0 {
            color: #A5D6A7;
            }
            .podevent-body .podevent-box-item .podevent-box-content .podevent-box-msg {
            padding-top: 0.15rem;
            font-size: 0.14rem;
            line-height: 0.22rem;
            color: #3d3e4c;
            text-align: justify;
            word-break: break-all;
            }
            .podevent-footer {
            height: 2.24rem;
            padding: 0;
            }
            .podevent-footer .podevent-footer-body {
            position: relative;
            z-index: 2;
            }
            .podevent-footer p {
            text-align: center;
            font-size: 0.1rem;
            line-height: 0.15rem;
            color: #AAAAAA;
            }
            .podevent-footer .QRCode {
            width: 1rem;
            height: 1rem;
            margin-bottom: 0.13rem;
            margin-top: 0.24rem;
            display: inline-block;
            }
            .podevent-footer .QRCode-title {
            margin-bottom: 0.33rem;
            }
            .text-center {
            text-align: center;
            }

        </style>
    </head>
    <body>
        <div class="podevent-main">
            <header class="podevent-head">
                <div class="max-width head-body">
                    <img class="podevent-logo" src="{{imgList.logo}}"/>
                    <h1 class="podevent-title">违约历程</h1>
                    <h2 class="podevent-name">{{name}}</h2>
                    <!-- 适配小米浏览器分享到微信的卡片title信息 -->
                    <h2 style="display: none;">{{title}}</h2>
                    <table class="podevent-info">
                        {% if type=='entity' %}
                        <tr class="podevent-info-item">
                            <td class="podevent-info-item-name">地区(省)</td>
                            <td class="podevent-info-item-content">{{province}}</td>
                        </tr>
                        {% else %}
                        <tr class="podevent-info-item">
                            <td class="podevent-info-item-name">发行人</td>
                            <td class="podevent-info-item-content">{{issuer}}</td>
                        </tr>
                        {% endif %}
                        <tr class="podevent-info-item">
                            <td class="podevent-info-item-name">统计截止日</td>
                            <td class="podevent-info-item-content">{{deadline}}</td>
                        </tr>
                        {% if type=='entity' %}
                        <tr class="podevent-info-item">
                            <td class="podevent-info-item-name">联合行业(三级)</td>
                            <td class="podevent-info-item-content">{{industry}}</td>
                        </tr>
                        {% endif %}
                        <tr class="podevent-info-item">
                            <td class="podevent-info-item-name">累计违约金额</td>
                            <td class="podevent-info-item-content">{{defaultMoney}}亿元</td>
                        </tr>
                    </table>
                </div>
                <div class="background-body">
                    <span class="background-img-left">
                        <img src="{{imgList.yuan}}"/>
                    </span>
                    <span class="background-img-bottom">
                        <img src="{{imgList.list}}"/>
                    </span>
                </div>
            </header>
            <main class="podevent-body max-width">
                {% for item in podeventList %}
                <section class="podevent-box-item">
                    <div class="podevent-box-time">
                        <span class="podevent-box-day">{{item.day}}</span>
                        <span class="podevent-box-mounth">{{item.mounth}}</span>
                    </div>
                    <div class="podevent-box-content">
                        <p class="podevent-box-level">
                            {% if item.happen_warning_level==-1 %}
                            <span class="wariningLevel-world red">已违约</span>
                            {% elseif item.happen_warning_level==10 %}
                            <img class="wariningLevel-icon" src="{{imgList.icon_risk_red}}">
                            <span class="wariningLevel-world red">红色预警</span>
                            {% elseif item.happen_warning_level==20 %}
                            <img class="wariningLevel-icon" src="{{imgList.icon_risk_yellow}}">
                            <span class="wariningLevel-world yellow">橙色预警</span>
                            {% elseif item.happen_warning_level==30 %}
                            <img class="wariningLevel-icon" src="{{imgList.icon_risk_blue}}">
                            <span class="wariningLevel-world blue">蓝色预警</span>
                            {% elseif item.happen_warning_level==40 %}
                            <img class="wariningLevel-icon" src="{{imgList.icon_risk_none}}">
                            <span class="wariningLevel-world gray">无预警</span>
                            {% elseif item.happen_warning_level==33 %}
                            <img class="wariningLevel-icon" src="{{imgList.icon_risk_none_F3}}">
                            <span class="wariningLevel-world green3">关注等级F3</span>
                            {% elseif item.happen_warning_level==34 %}
                            <img class="wariningLevel-icon" src="{{imgList.icon_risk_none_F2}}">
                            <span class="wariningLevel-world green2">关注等级F2</span>
                            {% elseif item.happen_warning_level==35 %}
                            <img class="wariningLevel-icon" src="{{imgList.icon_risk_none_F1}}">
                            <span class="wariningLevel-world green1">关注等级F1</span>
                            {% elseif item.happen_warning_level==36 %}
                            <img class="wariningLevel-icon" src="{{imgList.icon_risk_none_F0}}">
                            <span class="wariningLevel-world green0">关注等级F0</span>
                            {% else %}
                            <span class="wariningLevel-world gray">N/A</span>
                            {% endif %}
                        </p>
                        <p class="podevent-box-msg">{{ item.content }}</p>
                    </div>
                </section>
                {% endfor %}
            </main>
            <footer class="podevent-footer max-width">
                <div class="background-body" style="margin-bottom: -1rem">
                    <span class="background-img-footer">
                        <img src="{{imgList.city}}">
                    </span>
                </div>
                <div class="podevent-footer-body">
                    <div class="text-center">
                        <img class="QRCode" src="{{imgList.QRCode}}">
                    </div>
                    <p class="QRCode-title">长按二维码识别 关注联合见智公众号</p>
                    <p>数据生成日期 {{generateDate}}</p>
                    <p>本数据由联合见智(www.lhseer.com)提供</p>
                </div>
            </footer>
        </div>
    </body>
    
    <script>
        (function (doc, win) {
            var docEl = doc.documentElement;
            var maxWidth = 320;
            var resizeEvt = 'orientationchange' in window ? 'orientationchange' : 'resize';
            var recalc = function () {
                var clientWidth = docEl.clientWidth;
                if (!clientWidth) return;
                if(clientWidth < maxWidth) {
                    docEl.style.fontSize = 200 * (clientWidth / 750) + 'px';
                } else {
                    docEl.style.fontSize = '100px';
                }
                setTimeout(function() {
                    document.querySelector('.podevent-main').style.display = 'block';
                }, 0);
            };
            if (!doc.addEventListener) return;
            win.addEventListener(resizeEvt, recalc, false);
            doc.addEventListener('DOMContentLoaded', recalc, false);
        })(document, window);
    </script>
</html>
