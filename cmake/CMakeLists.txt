add_library(project_options INTERFACE)
add_library(project_warnings INTERFACE)

include(CompilerOptions.cmake)
include(CompilerWarnings.cmake)
include(StaticAnalyzers.cmake)
include(Sanitizers.cmake)