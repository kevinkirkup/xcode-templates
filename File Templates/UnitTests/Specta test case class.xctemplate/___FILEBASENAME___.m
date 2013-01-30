//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "Specta/Specta.h"

#define EXP_SHORTHAND
#import "Expecta/Expecta.h"

SpecBegin(___FILEBASENAMEASIDENTIFIER___)

    __block <#MyClass#> *<#cut#> = nil;

    context(@"<#With some input#>", ^{

        beforeEach(^{
          <#Some Setup#>
        });

        it(@"<#should do something useful#>", ^{
            <#expect#>
        });
    });

SpecEnd
