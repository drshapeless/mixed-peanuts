generate :: () -> bool {
    output_filename: string;
    output_filename = "shapeless.jai";

    opts: Generate_Bindings_Options;

    array_add(*opts.library_search_paths, "lib");
    array_add(*opts.source_files, "sources/shapeless.h");

    #if OS == .MACOS {
        array_add(*opts.libraries, .{filename = "libshapeless.so"});
    } else #if OS == .LINUX {
        array_add(*opts.libraries, .{filename = "libshapeless.dylib"});
    }

    make_directory_if_it_does_not_exist("lib");


    // TODO: should check if the library is already compiled. Now it
    // compiles every time.
    build_commands: [..]string;

    // Making a shared library instead of a static seems to be a must
    // for binding generation, as Jai uses libclang to analyze the
    // code.
    #if OS == .MACOS {
        array_add(*build_commands, "clang", "-dynamiclib", "-fPIC", "sources/shapeless.c", "-o", "lib/libshapeless.dylib");
    } else #if OS == .LINUX {
        array_add(*build_commands, "clang", "-shared", "-fPIC", "sources/shapeless.c", "-o", "lib/libshapeless.so");
    }
    run_command(..build_commands);

    #if OS == .MACOS {
    run_command("install_name_tool", "-id", "@rpath/libshapeless.dylib", "lib/libshapeless.dylib");
    }

    return generate_bindings(opts, output_filename);
}

#import "Basic";
#import "Process";
#import "Bindings_Generator";
#import "File";

#run generate();
