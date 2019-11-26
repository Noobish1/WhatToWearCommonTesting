source 'https://github.com/Noobish1/WhatToWearSpecs.git'
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

target 'WhatToWearCommonTesting' do
    # Debug pods
    pod 'SwiftLint', '0.37.0', :configurations => 'Debug'
    
    target 'WhatToWearCommonTestingTests' do
        inherit! :search_paths
        pod 'Quick', '2.2.0'
        pod 'Nimble', '8.0.4'
        pod 'R.swift', '5.1.0'
    end
end

target 'Example' do
    pod 'R.swift', '5.1.0'
end
