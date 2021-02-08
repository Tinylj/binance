const Service = require('egg').Service;
class podeventService extends Service {
    async log(compCode) {
        const client1 = this.app.mysql.get('bond');
        const podList = await client1.query('select * from lh_bond_pod_event_logs where comp_code = ?', [compCode]);
        return { podList };
    }
}

module.exports = podeventService;