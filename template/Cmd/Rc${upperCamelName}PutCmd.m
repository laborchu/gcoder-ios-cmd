#import "Rc${table.upperCamelName}PutCmd.h"
#import "CmdCode.h"
#import "CmdSignModel.h"

@interface Rc${table.upperCamelName}PutCmd ()
@end

@implementation Rc${table.upperCamelName}PutCmd {
}

- (instancetype)init {
    if (self = [super init]) {
    }
    return self;
}


- (CmdSignModel *)req {
    CmdSignModel *signPb = [super buildCmdSignData:nil];
    return signPb;
}

- (void)resp:(CmdSignModel *)sign {
}

- (void)error:(CmdSignModel *)sign {
}

- (NSString *)getCmdCode {
    return CMD_${table.upperTableName}_PUT;
}
@end