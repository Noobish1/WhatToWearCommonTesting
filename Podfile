source 'https://github.com/Noobish1/WhatToWearSpecs.git'
source 'https://github.com/CocoaPods/Specs.git'

use_frameworks!

def main_pods
    # Debug pods
    pod 'SwiftLint', '0.37.0', :configurations => 'Debug'
end

def testing_pods
    pod 'Quick', '2.2.0'
    pod 'Nimble', '8.0.4'
    pod 'R.swift', '5.1.0'
end

target 'WhatToWearCommonTesting' do
    platform :ios, '10.0'
    
    main_pods
    
    target 'WhatToWearCommonTestingTests' do
        inherit! :search_paths

        testing_pods
    end
end

target 'WhatToWearCommonTesting-Mac' do
    platform :osx, '10.14'
    
    main_pods
end

target 'Example' do
    platform :ios, '10.0'
    
    pod 'R.swift', '5.1.0'
end
