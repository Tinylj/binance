<html>
    <head>
        <title>联合见智 违约历程</title>
        <link rel="shortcut icon" type="image/x-icon" href="{{imgList.favicon}}" rel="external nofollow" />
        <meta charset="utf-8">
        <meta name="description" content="联合见智 违约历程"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1,minimum-scale=1,user-scalable=0">
        <meta http-equiv="cache-control" content="no-cache">
        <style>
            html,body {
                margin: 0; 
                padding: 0; 
                font-size: .2rem;
                font-family: Helvetica, sans-serif, Arial;
                text-align: center;
                line-height: 1;
                overflow-x: hidden;
            }
            .dataError-body {
                display: none;
            }
            .dataError-img {
                width: 2.96rem;
                margin-top: 1.49rem;
            }
            .dataError-msg {
                font-size: 0.13rem;
                color: #b0b1b9;
                padding-top: 0.23rem;
                padding-bottom: 0.42rem;
            }
            .QRCode {
                width: 1.37rem;
            }
        </style>
    </head>
    <body>
        <main class="dataError-body max-width">
            <section>
                <img class="dataError-img" src="{{imgList.dataError}}"/>
            </section>
            <section>
                <div class="dataError-msg">数据出错或已过期，更多信息详见联合见智公众号</div>
                <div style="padding-bottom: 0.42rem;">
                    <img class="QRCode" src="{{imgList.QRCode}}"/>
                </div>
            </section>
        </main>
        
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
                        document.querySelector('.dataError-body').style.display = 'block';
                    }, 0);
                };
                if (!doc.addEventListener) return;
                win.addEventListener(resizeEvt, recalc, false);
                doc.addEventListener('DOMContentLoaded', recalc, false);
            })(document, window);
        </script>
    </body>
</html>
