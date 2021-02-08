module.exports = app => {
    const { router, controller } = app;
    router.post('/podevent/log', controller.podevent.log);
    if(app.config.env === 'local') {
        // /imgToBase64/output接口仅供本地开发使用
        router.get('/imgToBase64/output', controller.imgToBase64.output);
    };
    router.get('/waterMark/log',controller.waterMark.log);
    router.get('/waterMark/log2',controller.waterMark.log2);
    router.get('/waterMark/log3',controller.waterMark.log3);
    router.get('/waterMark/log4',controller.waterMark.log4);
};