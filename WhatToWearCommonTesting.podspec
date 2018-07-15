Pod::Spec.new do |s|
    s.name                      = "WhatToWearCommonTesting"
    s.version                   = "1.5.0"
    s.summary                   = "Common testing files for both WhatToWear and WhatToWearBackend"
    s.homepage                  = "https://bitbucket.org/BlairMcArthur/whattowearcommontesting"
    s.license                   = 'MIT'
    s.author                    = { "Blair McArthur" => "blair.mcarthur@icloud.com" }
    s.platform                  = :ios, '8.0'
    s.source                    = { :git => "https://bitbucket.org/BlairMcArthur/whattowearcommontesting.git", :tag => s.version.to_s }
    s.requires_arc              = true
    s.source_files              = "WhatToWearCommonTesting/**/*.swift"
    s.module_name               = "WhatToWearCommonTesting"
    s.swift_version             = '4.1'
    s.dependency "WhatToWearCommonCore"
end
