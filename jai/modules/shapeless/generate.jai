generate :: () -> bool {
    output_filename: string;
    output_filename = "shapeless.jai";

    opts: Generate_Bindings_Options;

    array_add(*opts.source_files, "sources/shapeless.h");

    #if OS == .MACOS {
        array_add(*opts.libraries, .{filename = "libshapeless.dylib"});
    } else #if OS == .LINUX {
        array_add(*opts.libraries, .{filename = "libshapeless.so"});
    }


    // TODO: should check if the library is already compiled. Now it
    // compiles every time.
    build_cpp_dynamic_lib("libshapeless", "sources/shapeless.c");

    return generate_bindings(opts, output_filename);
}

#import "Basic";
#import "Process";
#import "Bindings_Generator";
#import "File";
#import "BuildCpp";

#run generate();
