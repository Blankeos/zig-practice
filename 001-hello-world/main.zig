const std = @import("std");

pub fn main() !void {
    std.debug.print("Hello, {s}!\n", .{"World"});

    // std.log gives you `<prefix>: <message>`. (e.g. 'info: Hello, World!')
    // std.log automatically has "\n"

    // prefix: info
    std.log.info("Hi there!, {s}", .{"Carlo"});

    // Integers/Floats are "d" in format. Strings are "s".
    std.log.warn("What the heck! Careful of this {s}. Code: {d}", .{ "SYNTAX_ERROR", 42 });

    std.log.debug("I'm a {d} year old {s}.", .{ 23, "programmer" });

    std.log.err("I'm {d} in {s}.", .{ 5.5, "height" });
    std.log.err("I'm {d} in {s}.", .{ 52.3, "weight" });
}
