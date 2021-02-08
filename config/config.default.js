exports.keys = "woaizhongguo";
// 添加 view 配置
exports.view = {
    defaultViewEngine: 'nunjucks',
    mapping: {
        '.tpl': 'nunjucks',
    },
};
exports.news = {
    pageSize: 5,
    serverUrl: 'https://hacker-news.firebaseio.com/v0',
};

//连接mysql 多数据库配置
exports.mysql = {
    clients: {
        // clientId, 获取client实例，需要通过 app.mysql.get('clientId') 获取
        smart: {
            // host
            host: '10.1.90.25',
            // 端口号
            port: '3307',
            // 用户名
            user: 'root',
            // 密码
            password: 'lhtest12#@',
            // 数据库名
            database: 'lh_smart_mgt',
        },
        demo: {
            host: '10.1.90.25',
            // 端口号
            port: '3307',
            // 用户名
            user: 'root',
            // 密码
            password: 'lhtest12#@',
            // 数据库名
            database: 'egg_demo',
        },
        bond: {
            // host
            host: '10.1.90.25',
            // 端口号
            port: '3307',
            // 用户名
            user: 'root',
            // 密码
            password: 'lhtest12#@',
            // 数据库名
            database: 'lh_bond',
        },
        // ...
    },
    // 所有数据库配置的默认值
    default: {

    },

    // 是否加载到 app 上，默认开启
    app: true,
    // 是否加载到 agent 上，默认关闭
    agent: false,
};