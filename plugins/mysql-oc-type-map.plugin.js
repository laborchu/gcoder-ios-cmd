'use strict';
var gcoder = require('gcoder');

var MysqlOcTypeMapFilterPlugin = module.exports = gcoder.Plugin.extend({
    constructor: function () {
    }
});

MysqlOcTypeMapFilterPlugin.prototype.do = function (tables,config) {
    MysqlOcTypeMapFilterPlugin.__super__.do();
    let splitChat = config.splitChat || "_";
    let tsTypeMap = {
        "int":"int",
        "tinyint":"int",
        "smallint":"int",
        "bigint":"int",
        "int unsigned":"int",
        "varchar":"NSString",
        "float":"float",
        "double":"double",
        "date":"NSDate",
        "datetime":"NSDate",
        "decimal":"NSDecimal",
        "text":"NSString",
    }
    for(let table of tables){
        table.prefix = table.tableName.split("_")[0];
        for(let field of table.fieldArray){
            let fieldType = field.fieldType.replace(/\(\d+,\d\)/,"");
            field.ocType = tsTypeMap[fieldType];
            if(field.ocType.startsWith("NS")){
                field.ocObject = true;
            }
            if(!field.javaType){
                console.log(`${field.fieldType} not map ocType`);
            }
        }
    }
};
