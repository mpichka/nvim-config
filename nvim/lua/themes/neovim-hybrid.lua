-- this line for types, by hovering and autocompletion (lsp required)
-- will help you understanding properties, fields, and what highlightings the color used for
---@type Base46Table
local M = {
  type = "dark"
}

-- UI
M.base_30 = {
  white = "#d4d4d4",
  black = "#1e1f21",        -- editor background
  darker_black = "#1a1b1d", -- ~6% darker
  black2 = "#232425",       -- ~6% lighter
  one_bg = "#28292b",       -- ~10% lighter
  one_bg2 = "#2e2f31",
  one_bg3 = "#343536",
  grey = "#404040",
  grey_fg = "#505050",
  grey_fg2 = "#606060",
  light_grey = "#707070",

  red = "#cc6666",
  baby_pink = "#FF5370",
  pink = "#b294bb",
  line = "#292a2c", -- for line highlight
  green = "#b5bd68",
  vibrant_green = "#c6d685",
  nord_blue = "#81a2be",
  blue = "#8abeb7",
  seablue = "#4796c2",
  yellow = "#f0c674",
  sun = "#f9d27c",
  purple = "#b294bb",
  dark_purple = "#9b7cb8",
  teal = "#8abeb7",
  orange = "#de935f",
  cyan = "#8abeb7",

  statusline_bg = "#1d2428",
  lightbg = "#232a2e",
  pmenu_bg = "#81a2be",
  folder_bg = "#81a2be",
}

-- check https://github.com/chriskempson/base16/blob/master/styling.md for more info
M.base_16 = {
  base00 = "#1e1f21", -- background
  base01 = "#28292b", -- lighter bg
  base02 = "#2e2f31",
  base03 = "#404040",
  base04 = "#6c7a80",
  base05 = "#d4d4d4", -- foreground
  base06 = "#e4e4e4",
  base07 = "#ffffff",
  base08 = "#cc6666", -- red
  base09 = "#de935f", -- orange
  base0A = "#f0c674", -- yellow
  base0B = "#b5bd68", -- green
  base0C = "#8abeb7", -- cyan
  base0D = "#81a2be", -- blue
  base0E = "#b294bb", -- purple
  base0F = "#FF5370", -- pink / special
}

M.polish_hl = {
  defaults = {
    Comment = { italic = true },
    CursorLine = { bg = "#99dbff" },
    Visual = { bg = "#99dbff" },
    StatusLine = { bg = "#1d2428" },
  },

  -- docs: https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md
  treesitter = {
    -- Identifiers
    ["@variable"] = { fg = "#e4e4e4" },                   -- various variable names
    ["@variable.builtin"] = { fg = "#81a2be" },           -- built-in variable names (e.g. `this`)
    ["@variable.parameter"] = { fg = "#e4e4e4" },         -- parameters of a function
    ["@variable.parameter.builtin"] = { fg = "#cc6666" }, -- special parameters (e.g. `_`, `it`)
    ["@variable.member"] = { fg = "#81a2be" },            -- object and struct fields

    ["@constant"] = { fg = "#e4e4e4" },                   -- constant identifiers
    ["@constant.builtin"] = { fg = "#e4e4e4" },           -- built-in constant values
    ["@constant.macro"] = { fg = "#ff5370" },             -- constants defined by the preprocessor

    ["@module"] = { fg = "#81a2be" },                     -- modules or namespaces
    ["@module.builtin"] = { fg = "#81a2be" },             -- built-in modules or namespaces
    ["@label"] = { fg = "#f0c674" },                      -- GOTO and other labels (e.g. `label:` in C), including heredoc labels

    -- Literals
    ["@string"] = { fg = "#b5bd68" },                               -- string literals
    ["@string.documentation"] = { fg = "#b5bd68" },                 -- string documenting code (e.g. Python docstrings)
    ["@string.regexp"] = { fg = "#cc6666" },                        -- regular expressions
    ["@string.escape"] = { fg = "#b294bb" },                        -- escape sequences
    ["@string.special"] = { fg = "#b5bd68" },                       -- other special strings (e.g. dates)
    ["@string.special.symbol"] = { fg = "#f0c674" },                -- symbols or atoms
    ["@string.special.url"] = { fg = "#b5bd68", underline = true }, -- URIs (e.g. hyperlinks)
    ["@string.special.path"] = { fg = "#b5bd68" },                  -- filenames

    ["@character"] = { fg = "#de935f" },                            -- character literals
    ["@character.special"] = { fg = "#f0c674" },                    -- special characters (e.g. wildcards)

    ["@boolean"] = { fg = "#f0c674" },                              -- boolean literals
    ["@number"] = { fg = "#cc6666" },                               -- numeric literals
    ["@number.float"] = { fg = "#cc6666" },                         -- floating-point number literals

    -- Types
    ["@type"] = { fg = "#f0c674" },                     -- type or class definitions and annotations
    ["@type.builtin"] = { fg = "#e4e4e4" },             -- built-in types
    ["@type.definition"] = { fg = "#f0c674" },          -- identifiers in type definitions (e.g. `typedef <type> <identifier>` in C)

    ["@attribute"] = { fg = "#f0c674", italic = true }, -- attribute annotations (e.g. Python decorators, Rust lifetimes)
    ["@attribute.builtin"] = { fg = "#de935f" },        -- builtin annotations (e.g. `@property` in Python)
    ["@property"] = { fg = "#e4e4e4" },                 -- the key in key/value pairs

    -- Functions
    ["@function"] = { fg = "#f0c674" },             -- function definitions
    ["@function.builtin"] = { fg = "#f0c674" },     -- built-in functions
    ["@function.call"] = { fg = "#f0c674" },        -- function calls
    ["@function.macro"] = { fg = "#ff5370" },       -- preprocessor macros

    ["@function.method"] = { fg = "#f0c674" },      -- method definitions
    ["@function.method.call"] = { fg = "#f0c674" }, -- method calls

    ["@constructor"] = { fg = "#f0c674" },          -- constructor calls and definitions
    ["@operator"] = { fg = "#e4e4e4" },             -- symbolic operators (e.g. `+` / `*`)

    -- Keywords
    ["@keyword"] = { fg = "#81a2be" },                     -- keywords not fitting into specific categories
    ["@keyword.coroutine"] = { fg = "#81a2be" },           -- keywords related to coroutines (e.g. `go` in Go, `async/await` in Python)
    ["@keyword.function"] = { fg = "#81a2be" },            -- keywords that define a function (e.g. `func` in Go, `def` in Python)
    ["@keyword.operator"] = { fg = "#81a2be" },            -- operators that are English words (e.g. `and` / `or`)
    ["@keyword.import"] = { fg = "#f0c674" },              -- keywords for including or exporting modules (e.g. `import` / `from` in Python)
    ["@keyword.type"] = { fg = "#81a2be" },                -- keywords describing namespaces and composite types (e.g. `struct`, `enum`)
    ["@keyword.modifier"] = { fg = "#e4e4e4" },            -- keywords modifying other constructs (e.g. `const`, `static`, `public`)
    ["@keyword.repeat"] = { fg = "#81a2be" },              -- keywords related to loops (e.g. `for` / `while`)
    ["@keyword.return"] = { fg = "#81a2be" },              -- keywords like `return` and `yield`
    ["@keyword.debug"] = { fg = "#de935f" },               -- keywords related to debugging
    ["@keyword.exception"] = { fg = "#f0c674" },           -- keywords related to exceptions (e.g. `throw` / `catch`)

    ["@keyword.conditional"] = { fg = "#81a2be" },         -- keywords related to conditionals (e.g. `if` / `else`)
    ["@keyword.conditional.ternary"] = { fg = "#e4e4e4" }, -- ternary operator (e.g. `?` / `:`)

    ["@keyword.directive"] = { fg = "#81a2be" },           -- various preprocessor directives & shebangs
    ["@keyword.directive.define"] = { fg = "#81a2be" },    -- preprocessor definition directives

    -- Punctuation
    ["@punctuation.delimiter"] = { fg = "#e4e4e4" }, -- delimiters (e.g. `;` / `.` / `,`)
    ["@punctuation.bracket"] = { fg = "#e4e4e4" },   -- brackets (e.g. `()` / `{}` / `[]`)
    ["@punctuation.special"] = { fg = "#f0c674" },   -- special symbols (e.g. `{}` in string interpolation)

    -- Comments
    ["@comment"] = { fg = "#6c7a80", italic = true }, --line and block comments
    ["@comment.documentation"] = { fg = "#e4e4e4" },  -- comments documenting code

    ["@comment.error"] = { fg = "#f44747" },          -- error-type comments (e.g. `ERROR`, `FIXME`, `DEPRECATED`)
    ["@comment.warning"] = { fg = "#cd9731" },        -- warning-type comments (e.g. `WARNING`, `FIX`, `HACK`)
    ["@comment.todo"] = { fg = "#6796e6" },           -- todo-type comments (e.g. `TODO`, `WIP`)
    ["@comment.note"] = { fg = "#b267e6" },           -- note-type comments (e.g. `NOTE`, `INFO`, `XXX`)

    -- Markup
    ["@markup.strong"] = { fg = "#81a2be", bold = true },         -- bold text
    ["@markup.italic"] = { fg = "#b294bb", italic = true },       -- italic text
    ["@markup.strikethrough"] = { strikethrough = true },         -- struck-through text
    ["@markup.underline"] = { fg = "#81a2be", underline = true }, -- underlined text (only for literal underline markup!)

    ["@markup.heading"] = { fg = "#de935f" },                     -- headings, titles (including markers)
    ["@markup.heading.1"] = { fg = "#de935f" },                   -- top-level heading
    ["@markup.heading.2"] = { fg = "#de935f" },                   -- section heading
    ["@markup.heading.3"] = { fg = "#f0c674" },                   -- subsection heading
    ["@markup.heading.4"] = { fg = "#f0c674" },                   -- and so on
    ["@markup.heading.5"] = { fg = "#f0c674" },                   -- and so forth
    ["@markup.heading.6"] = { fg = "#f0c674" },                   -- six levels ought to be enough for anybody

    ["@markup.quote"] = { fg = "#b5bd68" },                       -- block quotes
    ["@markup.math"] = { fg = "#6c7a80" },                        -- math environments (e.g. `$ ... $` in LaTeX)

    ["@markup.link"] = { fg = "#de935f" },                        -- text references, footnotes, citations, etc.
    ["@markup.link.label"] = { fg = "#de935f" },                  -- link, reference descriptions
    ["@markup.link.url"] = { fg = "#de935f" },                    --  URL-style links

    ["@markup.raw"] = { fg = "#e4e4e4" },                         -- literal or verbatim text (e.g. inline code)
    ["@markup.raw.block"] = { fg = "#e4e4e4" },                   -- literal or verbatim text as a stand-alone block (use priority 90 for blocks with injections)

    ["@markup.list"] = { fg = "#c5c8c6" },                        -- list markers
    ["@markup.list.checked"] = { fg = "#b5bd68" },                -- checked todo-style list markers
    ["@markup.list.unchecked"] = { fg = "#c5c8c6" },              -- unchecked todo-style list marker

    ["@diff.plus"] = { fg = "#b5bd68" },                          -- added text (for diff files)
    ["@diff.minus"] = { fg = "#ff5370" },                         -- deleted text (for diff files)
    ["@diff.delta"] = { fg = "#81a2be" },                         -- changed text (for diff files)

    ["@tag"] = { fg = "#f0c674" },                                -- XML-style tag names (and similar)
    ["@tag.builtin"] = { fg = "#de935f" },                        -- builtin tag names (e.g. HTML5 tags)
    ["@tag.attribute"] = { fg = "#e4e4e4" },                      -- XML-style tag attributes
    ["@tag.delimiter"] = { fg = "#e4e4e4" },                      -- XML-style tag delimiters
  }
}

-- this will be later used for users to override your theme table from chadrc
M = require("base46").override_theme(M, "neovim-hybrid")

return M
