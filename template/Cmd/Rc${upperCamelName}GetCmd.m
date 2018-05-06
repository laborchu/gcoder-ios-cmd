#import "Rc${table.upperCamelName}GetCmd.h"
#import "CmdCode.h"
#import "CmdSignModel.h"

@interface Rc${table.upperCamelName}GetCmd ()
@end

@implementation Rc${table.upperCamelName}GetCmd {
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
    return CMD_${table.upperTableName}_GET;
}
@end