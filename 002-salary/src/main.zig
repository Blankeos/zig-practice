const std = @import("std");

pub fn main() !void {
    std.debug.print("💵 Welcome to the Salary Estimator App!\n", .{});
    std.debug.print("\n", .{});

    // Generating Random Numbers

    var seed: u64 = undefined;
    try std.posix.getrandom(std.mem.asBytes(&seed));

    var prng = std.rand.DefaultPrng.init(seed);
    const rand = prng.random();

    // Taking User Input
    while (true) {
        const stdout = std.io.getStdOut().writer();
        const stdin = std.io.getStdIn().reader();

        const bare_line = try stdin.readUntilDelimiterAlloc(std.heap.page_allocator, '\n', 8192);
        defer std.heap.page_allocator.free(bare_line);

        const line = std.mem.trim(u8, bare_line, '\r');
    }
    try stdout.print("Not-so random number: {d}\n", .{rand.intRangeAtMost(u8, 1, 100)});
    // std.debug.print("Enter your Currency: [USD | PHP]", .{});

    // std.debug.print("{s} currency", .{currency});

    // // Prints to stderr (it's a shortcut based on `std.io.getStdErr()`)
    // std.debug.print("All your {s} are belong to us.\n", .{"codebase"});

    // // stdout is for the actual output of your application, for example if you
    // // are implementing gzip, then only the compressed bytes should be sent to
    // // stdout, not any debugging messages.
    // const stdout_file = std.io.getStdOut().writer();
    // var bw = std.io.bufferedWriter(stdout_file);
    // const stdout = bw.writer();

    // try stdout.print("Run `zig build test` to run the tests.\n", .{});

    // try bw.flush(); // don't forget to flush!
}

// IDK How to write tests :D
// test "simple test" {
//     var list = std.ArrayList(i32).init(std.testing.allocator);
//     defer list.deinit(); // try commenting this out and see if zig detects the memory leak!
//     try list.append(42);
//     try std.testing.expectEqual(@as(i32, 42), list.pop());
// }
