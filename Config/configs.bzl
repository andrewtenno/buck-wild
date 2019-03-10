SHARED_CONFIGS = {
  "IPHONEOS_DEPLOYMENT_TARGET": "12.0",  # common target version
  "SDKROOT": "iphoneos", # platform
  "GCC_OPTIMIZATION_LEVEL": "0",  # clang optimization
  "SWIFT_OPTIMIZATION_LEVEL": "-Onone",  # swiftc optimization
  "SWIFT_WHOLE_MODULE_OPTIMIZATION": "YES",  # for build performance
  "ONLY_ACTIVE_ARCH": "YES",
  "LD_RUNPATH_SEARCH_PATHS": "@executable_path/Frameworks", # To allow source files in binary
}

def bundle_identifier(name):
  return "com.tennodev.{}".format(name)

def library_configs():
  library_specific_config = {
    "SWIFT_WHOLE_MODULE_OPTIMIZATION": "YES",
    "SKIP_INSTALL": "YES",
  }
  library_config = SHARED_CONFIGS + library_specific_config
  configs = {
    "Debug": library_config,
    "Profile": library_config,
    "Release": library_specific_config,
  }

def binary_configs(name):
  binary_specific_config = {
    "PRODUCT_BUNDLE_IDENTIFIER": bundle_identifier(name),
  }
  binary_config = SHARED_CONFIGS + binary_specific_config
  configs = {
    "Debug": binary_config,
    "Profile": binary_config,
  }

def info_plist_substitutions(name):
  substitutions = {
    "DEVELOPMENT_LANGUAGE": "en-us",
    "EXECUTABLE_NAME": name,
    "PRODUCT_BUNDLE_IDENTIFIER": bundle_identifier(name),
    "PRODUCT_NAME": name,
  }

  return substitutions
