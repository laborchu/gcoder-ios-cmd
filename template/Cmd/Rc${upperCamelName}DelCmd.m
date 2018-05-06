#import "Rc${table.upperCamelName}DelCmd.h"
#import "CmdCode.h"
#import "CmdSignModel.h"

@interface Rc${table.upperCamelName}DelCmd ()
@end

@implementation Rc${table.upperCamelName}DelCmd {
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
    return CMD_${table.upperTableName}_DEL;
}
@end