# Vim & Tmux Command Reference

## Vim Commands

### Leader Key
- Leader is set to `Space`

### Escape Mappings
- `kj` - Exit insert/visual mode (alternative to Esc)

### Custom Movement
- `J` - Scroll half-page down (Ctrl-d)
- `K` - Scroll half-page up (Ctrl-u)
- `-` - Scroll one line down (Ctrl-e)
- `=` - Scroll one line up (Ctrl-y)
- `B` - Jump backward 10 words
- `W` - Jump forward 10 words

### Split Navigation
- `<leader>h` - Move to left split
- `<leader>j` - Move to down split
- `<leader>k` - Move to up split
- `<leader>l` - Move to right split

### Split Management
- `<leader>v` - Create vertical split
- `<leader>s` - Create horizontal split
- `<leader>H` - Decrease width by 5 columns
- `<leader>J` - Increase height by 5 rows
- `<leader>K` - Decrease height by 5 rows
- `<leader>L` - Increase width by 5 columns
- `<leader>=` - Equalize all splits
- `<leader>q` - Quit current split/window

### Resize Mode
- `<leader>r` - Enter resize mode
  - In resize mode:
    - `h` - Decrease width
    - `j` - Increase height
    - `k` - Decrease height
    - `l` - Increase width
    - `Esc` - Exit resize mode

### Buffer Management
- `<leader>n` - Next buffer
- `<leader>p` - Previous buffer
- `<leader>d` - Delete current buffer

### File Operations
- `<leader>w` - Save file
- `<leader>x` - Save and quit
- `<leader>Q` - Quit without saving

### Search
- `<leader>/` - Clear search highlighting
- `n` - Next search result (centered)
- `N` - Previous search result (centered)

### FZF Integration (Fuzzy Finder)
- `<leader>f` - Search files
- `<leader>g` - Search text in files (ripgrep)
- `<leader>b` - Search open buffers

### Visual Mode
- `<` - Indent left (stays in visual mode)
- `>` - Indent right (stays in visual mode)

### Plugins
- **fzf** - Fuzzy file finder
- **fzf.vim** - Vim integration for fzf
- **onehalf** - Color scheme (onehalfdark)

### Settings
- Line numbers enabled
- 4-space tabs (spaces, not tabs)
- 80-character column marker at column 81
- Clipboard integration with system clipboard
- Mouse support enabled
- Auto-reload files when changed externally
- Extra whitespace highlighted in red

---

## Tmux Commands

### Prefix Key
- Prefix is set to `` ` `` (backtick)
- `` ` `` then `` ` `` - Send literal backtick

### Pane Navigation
- `` ` `` `h` - Move to left pane
- `` ` `` `j` - Move to down pane
- `` ` `` `k` - Move to up pane
- `` ` `` `l` - Move to right pane

### Pane Resizing (Repeatable)
- `` ` `` `H` - Resize pane left by 5 columns (can repeat without prefix)
- `` ` `` `J` - Resize pane down by 5 rows (can repeat without prefix)
- `` ` `` `K` - Resize pane up by 5 rows (can repeat without prefix)
- `` ` `` `L` - Resize pane right by 5 columns (can repeat without prefix)

### Split Panes
- `` ` `` `\` - Split pane vertically (inherits current path)
- `` ` `` `-` - Split pane horizontally (inherits current path)

### Window Management
- `` ` `` `c` - Create new window (inherits current path)
- `` ` `` `n` - Next window
- `` ` `` `p` - Previous window
- `` ` `` `x` - Kill current pane
- `` ` `` `X` - Kill current window

### Configuration
- `` ` `` `r` - Reload tmux configuration

### Copy Mode (Vi-style)
- `` ` `` `[` - Enter copy mode
- `` ` `` `p` - Paste buffer
- In copy mode: use vi-style navigation (h/j/k/l, w/b, etc.)

### Nested Sessions
- `F12` - Toggle key bindings off (for nested tmux sessions)
  - When off, status bar changes color to indicate nested mode
  - Press `F12` again to re-enable bindings

### Plugins

#### tmux-battery
- Shows battery percentage and status in status bar
- Color-coded: green (full/high), yellow (medium), red (low)

#### tmux-online-status
- Shows online/offline status with colored dot
- Green dot (●) when online
- Red dot (●) when offline

#### tmux-sidebar
- `` ` `` `t` - Toggle sidebar file tree
- `` ` `` `T` - Toggle sidebar and focus it
- Uses `tree -C` command for display

#### tmux-copycat
- Enhanced search in copy mode
- Predefined searches for common patterns (URLs, file paths, git hashes, etc.)

#### tmux-open
- `` ` `` `o` - Open selected text/file (default behavior)
- `` ` `` `S` - Search selected text on Google

#### tmux-resurrect
- `` ` `` `Ctrl-s` - Save tmux session
- `` ` `` `Ctrl-r` - Restore tmux session

#### tmux-continuum
- Automatically saves sessions every 15 minutes
- Automatically restores session on tmux start

### Settings
- 256-color support with true color
- Mouse support enabled
- Window/pane indexing starts at 1
- Automatic window renumbering
- 50,000 line history buffer
- No escape delay
- Vi-style key bindings in copy mode

### Status Bar
- Left: Session name
- Right: Key-table status | Zoom indicator | Online status | Date/Time | Battery
- Active window highlighted in orange
- Powerline-style separators
