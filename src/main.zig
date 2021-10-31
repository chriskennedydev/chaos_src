const std = @import("std");
const uni_val = 22;

pub fn main() !void {
    if (uni_val > 100) {
        @compileError("universal value cannot be greater than 100");
    }
    std.log.info("init system... {d}", .{uni_val});
}
