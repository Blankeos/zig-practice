# Zig Practice

Learning Zig because I wanna get into low-level programming and do some cool stuff with it.

Projects on this repo:

1. [x] Hello World - Zig basics.
2. [x] Guessing Game - Random number guessing game.
3. [ ] Salary - Console app that estimates salary based on hourly, daily, monthly, and yearly rates.
4. [ ] Tried Passwords CLI - Recreation of my [Go implementation](https://github.com/Blankeos/tried-passwords-cli).
5. [ ] HTTP Server - Simple HTTP server to understand networking and concurrency in Zig.
6. [ ] TCP Socket Chat - A console-based chat application using sockets to understand network communication.
7. [ ] Random Quotes - A simple CLI application that fetches a random quote from the [API Ninjas Quotes](https://api-ninjas.com/api/quotes).
8. [ ] Tic Tac Toe - A simple Tic Tac Toe game with persistence.
9. [ ] WebSocket Chat - A console-based chat application using WebSockets to understand network communication on browser.
10. [ ] Static Site Generator - Converts markdown to HTML.
11. [ ] WebView - Electron-like webview for Zig.\*\*\*\*
12. [ ] Todo GUI Application - A simple GUI application to manage tasks.

### Notes

- Initializing new projects:

```sh
zig init # (I think this is like `cargo new`)
# Creates
#   src/main.zig
#   src/root.zig
#   build.zig
#   build.zig.zon
```

- `zig run <file>.zig` - Run any zig file without making an exec.
- `zig build` - Build the project. Must have been created with `zig init`
- `./zig-out/bin/<project-name>` - Where you can find the binary to run after zig build in a "Zig Project".
- `zig build-exe <file>.zig` - Make an exec from any zig file.
- `./<file>` - After running build-exe you can run like this as usual.

- I think I'm giving up after trying to implement Salary.
  - 1: There's no library for getting the key presses.
  - 2: Receiving user input from the terminal is EXTREMELY verbose. It's not straightforward to do.
