const std = @import("std");

pub fn main() !void {
    const stdout_file = std.io.getStdOut().writer();
    var bw = std.io.bufferedWriter(stdout_file);
    const stdout = bw.writer();

    try stdout.print("Welcome to the Guessing Game by {s}!\n", .{"Carlo"});
    try bw.flush();

    // Initialize random number generator
    var prng = std.rand.DefaultPrng.init(blk: {
        var seed: u64 = undefined;
        try std.posix.getrandom(std.mem.asBytes(&seed));
        break :blk seed;
    });
    const rand = prng.random();
    const number_to_guess = rand.intRangeAtMost(u8, 0, 100);

    while (true) {
        var input_buffer: [100]u8 = undefined;
        const stdin = std.io.getStdIn().reader();

        try stdout.print("Enter a guess: ", .{});
        try bw.flush();

        if (try stdin.readUntilDelimiterOrEof(&input_buffer, '\n')) |user_input| {
            // Trim trailing newline if present
            const trimmed_input = std.mem.trimRight(u8, user_input, &[_]u8{ '\r', '\n' });

            // Parse the input as an integer
            const input_number = std.fmt.parseInt(u8, trimmed_input, 10) catch {
                try stdout.print("Invalid input: please enter a number between 0 and 100\n", .{});
                try bw.flush();
                continue;
            };

            if (input_number == number_to_guess) {
                try stdout.print("Congratulations! You guessed the number.\n", .{});
                try bw.flush();
                break;
            } else if (input_number < number_to_guess) {
                try stdout.print("Too low!\n", .{});
            } else {
                try stdout.print("Too high!\n", .{});
            }
        } else {
            try stdout.print("No input received\n", .{});
        }

        try bw.flush();
    }
}
