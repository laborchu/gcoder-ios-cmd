#ifndef CmdCode____FILEEXTENSION___
#define CmdCode____FILEEXTENSION___

<%tables.forEach(function(table){%>
#define CMD_${table.upperTableName}_GET = "${table.upperTableName}_GET";    
#define CMD_${table.upperTableName}_POST = "${table.upperTableName}_POST";    
#define CMD_${table.upperTableName}_DEL = "${table.upperTableName}_DEL";    
#define CMD_${table.upperTableName}_LIST = "${table.upperTableName}_LIST";    
#define CMD_${table.upperTableName}_PUT = "${table.upperTableName}_PUT";    
#define CMD_${table.upperTableName}_PATCH = "${table.upperTableName}_PATCH"; 
<%})%>

#endif