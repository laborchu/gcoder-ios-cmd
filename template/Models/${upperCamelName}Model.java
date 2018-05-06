#import <Foundation/Foundation.h>
#import "BaseModel.h"


@interface ${table.upperCamelName}Model : BaseModel
<%table.fieldArray.filter(function(field){return !field.ignore}).forEach(function(field){%>
/**
 * ${field.comment}
 */
@property(weak, nonatomic) ${field.ocType} <%if(field.ocObject){%>*<%}%>${field.lowerCamelName};<%})%>