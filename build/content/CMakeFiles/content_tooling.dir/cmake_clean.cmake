file(REMOVE_RECURSE
  "ImageAnalyse.qml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/content_tooling.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
