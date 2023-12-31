const std = @import("std");

pub export fn hello_from_zig() i32 {
    std.debug.print("hello from zig\n", .{});
    return 69;
}
