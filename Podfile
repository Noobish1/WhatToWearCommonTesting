source 'git@bitbucket.org:BlairMcArthur/whattowearspecs.git'
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

target 'WhatToWearCommonTesting' do
    pod 'WhatToWearCommonCore', :git => 'git@bitbucket.org:BlairMcArthur/whattowearcommoncore.git', :tag => '1.7.0'
    pod 'Fakery', '3.3.0'
    
    # Debug pods
    pod 'SwiftLint', '0.26.0', :configurations => 'Debug'
end

target 'WhatToWearCommonTestingTests' do
    inherit! :search_paths
    pod 'Quick', '1.3.0'
    pod 'Nimble', '7.1.1'
    pod 'Fakery', '3.3.0'
end

post_install do | installer |
    # Set swift versions on pods
    updated_pods = ['WhatToWearCommonCore']
    
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            if updated_pods.include? target.name
                config.build_settings['SWIFT_VERSION'] = '4.2'
            else
                config.build_settings['SWIFT_VERSION'] = '4.0'
            end
        end
    end
end
