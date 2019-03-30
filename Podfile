source 'git@github.com:Noobish1/whattowearspecs.git'
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

target 'WhatToWearCommonTesting' do
    # Debug pods
    pod 'SwiftLint', '0.26.0', :configurations => 'Debug'
    
    target 'WhatToWearCommonTestingTests' do
        inherit! :search_paths
        pod 'Quick', '2.0.0'
        pod 'Nimble', '8.0.1'
        pod 'R.swift', '5.0.2'
    end
end

target 'Example' do
    pod 'R.swift', '5.0.2'
end

post_install do | installer |
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '4.2'
        end
    end
end
