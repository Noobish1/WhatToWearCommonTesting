Pod::Spec.new do |s|
    s.name                      = "WhatToWearCommonTesting"
    s.version                   = "2.0.0"
    s.summary                   = "Common testing files for both WhatToWear and WhatToWearBackend"
    s.homepage                  = "https://github.com/Noobish1/whattowearcommontesting"
    s.license                   = 'MIT'
    s.author                    = { "Blair McArthur" => "blair.mcarthur@icloud.com" }
    s.platform                  = :ios, '10.0'
    s.source                    = { :git => "https://github.com/Noobish1/whattowearcommontesting.git", :tag => s.version.to_s }
    s.requires_arc              = true
    s.source_files              = "WhatToWearCommonTesting/**/*.swift"
    s.module_name               = "WhatToWearCommonTesting"
    s.swift_version             = '5.0'
end
