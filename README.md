# Zig Practice

Learning Zig because I wanna get into low-level programming and do some cool stuff with it.

Projects on this repo:

1. [x] Hello World - Zig basics.
2. [ ] Salary - Console app that estimates salary based on hourly, daily, monthly, and yearly rates.
3. [ ] Tried Passwords CLI - Recreation of my [Go implementation](https://github.com/Blankeos/tried-passwords-cli).
4. [ ] HTTP Server - Simple HTTP server to understand networking and concurrency in Zig.
5. [ ] TCP Socket Chat - A console-based chat application using sockets to understand network communication.
6. [ ] Random Quotes - A simple CLI application that fetches a random quote from the [API Ninjas Quotes](https://api-ninjas.com/api/quotes).
7. [ ] Tic Tac Toe - A simple Tic Tac Toe game with persistence.
8. [ ] WebSocket Chat - A console-based chat application using WebSockets to understand network communication on browser.
9. [ ] Static Site Generator - Converts markdown to HTML.
10. [ ] WebView - Electron-like webview for Zig.\*\*\*\*
11. [ ] Todo GUI Application - A simple GUI application to manage tasks.

### Notes

Initializing new projects:

```sh
zig init
# Creates
#   src/main.zig
#   src/root.zig
#   build.zig
#   build.zig.zon
```

- I think I'm giving up after trying to implement Salary.
  - 1: There's no library for getting the key presses.
  - 2: Receiving user input from the terminal is EXTREMELY verbose. It's not straightforward to do.
