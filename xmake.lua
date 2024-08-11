add_rules('mode.debug', 'mode.release')

add_repositories('my-repo https://github.com/Redbeanw44602/xmake-repo.git')

--- from: xmake-repo
add_requires('spdlog          1.12.0')
add_requires('argparse        2.9')
add_requires('elfio           3.11')
add_requires('nlohmann_json   3.11.2')

--- from: my-repo
add_requires('lief            0.15.1')

target('cppmetadumper')
    set_kind('binary')
    add_files('src/**.cpp')
    add_headerfiles('src/**.h')
    add_includedirs('src')
    add_packages('spdlog')
    add_packages('argparse')
    add_packages('nlohmann_json')
    add_packages('elfio')
    add_packages('lief')
    set_warnings('all')
    set_languages('cxx20', 'c99')
    set_exceptions('cxx')
