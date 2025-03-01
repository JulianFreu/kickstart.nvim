return {
  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    lazy = false,
    opts = {
      commentStyle = { italic = false },
      keywordStyle = { italic = false },
      statementStyle = { bold = true },
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = 'none',
            },
          },
        },
        palette = {
          -- terminal bg = #1E1E1E

          -- Bg Shades
          sumiInk0 = '#161616', --'#16161D',
          sumiInk1 = '#181818', --'#181820',
          sumiInk2 = '#1a1a1a', --'#1a1a22',
          sumiInk3 = '#1E1E1E', --'#1F1F28', --bg
          sumiInk4 = '#363636', --'#2A2A37', --lualine, context, gutter
          sumiInk5 = '#363646', --'#363646',
          sumiInk6 = '#54546D', --fg

          -- Popup and Floats
          waveBlue1 = '#223249',
          waveBlue2 = '#2D4F67',

          -- Diff and Git
          winterGreen = '#2B3328',
          winterYellow = '#49443C',
          winterRed = '#43242B',
          winterBlue = '#252535',
          autumnGreen = '#76946A',
          autumnRed = '#C34043',
          autumnYellow = '#DCA561',

          -- Diag
          samuraiRed = '#E82424',
          roninYellow = '#FF9E3B',
          waveAqua1 = '#6A9589',
          dragonBlue = '#658594',

          -- Fg and Comments
          oldWhite = '#C8C093',
          fujiWhite = '#DCD7BA', -- normal letter color
          fujiGray = '#727169',

          oniViolet = '#957FB8',
          oniViolet2 = '#b8b4d0',
          crystalBlue = '#7E9CD8',
          springViolet1 = '#938AA9',
          springViolet2 = '#9CABCA',
          springBlue = '#7FB4CA',
          lightBlue = '#A3D4D5', -- unused yet
          waveAqua2 = '#7AA89F', -- improve lightness: desaturated greenish Aqua

          -- waveAqua2  = "#68AD99",
          -- waveAqua4  = "#7AA880",
          -- waveAqua5  = "#6CAF95",
          -- waveAqua3  = "#68AD99",

          springGreen = '#98BB6C',
          boatYellow1 = '#938056',
          boatYellow2 = '#C0A36E',
          carpYellow = '#E6C384',

          sakuraPink = '#D27E99',
          waveRed = '#E46876',
          peachRed = '#FF5D62',
          surimiOrange = '#FFA066',
          katanaGray = '#717C7C',

          dragonBlack0 = '#0d0c0c',
          dragonBlack1 = '#12120f',
          dragonBlack2 = '#1D1C19',
          dragonBlack3 = '#181616', -- main background
          dragonBlack4 = '#282727', -- gutter, context, lualine
          dragonBlack5 = '#393836',
          dragonBlack6 = '#625e5a',

          dragonWhite = '#c5c9c5',
          dragonGreen = '#87a987',
          dragonGreen2 = '#8a9a7b',
          dragonPink = '#a292a3',
          dragonOrange = '#b6927b',
          dragonOrange2 = '#b98d7b',
          dragonGray = '#a6a69c',
          dragonGray2 = '#9e9b93',
          dragonGray3 = '#7a8382',
          dragonBlue2 = '#8ba4b0',
          dragonViolet = '#8992a7',
          dragonRed = '#c4746e',
          dragonAqua = '#8ea4a2',
          dragonAsh = '#737c73',
          dragonTeal = '#949fb5',
          dragonYellow = '#c4b28a', --"#a99c8b",
          -- "#8a9aa3",

          lotusInk1 = '#545464',
          lotusInk2 = '#43436c',
          lotusGray = '#dcd7ba',
          lotusGray2 = '#716e61',
          lotusGray3 = '#8a8980',
          lotusWhite0 = '#d5cea3',
          lotusWhite1 = '#dcd5ac',
          lotusWhite2 = '#e5ddb0',
          lotusWhite3 = '#f2ecbc',
          lotusWhite4 = '#e7dba0',
          lotusWhite5 = '#e4d794',
          lotusViolet1 = '#a09cac',
          lotusViolet2 = '#766b90',
          lotusViolet3 = '#c9cbd1',
          lotusViolet4 = '#624c83',
          lotusBlue1 = '#c7d7e0',
          lotusBlue2 = '#b5cbd2',
          lotusBlue3 = '#9fb5c9',
          lotusBlue4 = '#4d699b',
          lotusBlue5 = '#5d57a3',
          lotusGreen = '#6f894e',
          lotusGreen2 = '#6e915f',
          lotusGreen3 = '#b7d0ae',
          lotusPink = '#b35b79',
          lotusOrange = '#cc6d00',
          lotusOrange2 = '#e98a00',
          lotusYellow = '#77713f',
          lotusYellow2 = '#836f4a',
          lotusYellow3 = '#de9800',
          lotusYellow4 = '#f9d791',
          lotusRed = '#c84053',
          lotusRed2 = '#d7474b',
          lotusRed3 = '#e82424',
          lotusRed4 = '#d9a594',
          lotusAqua = '#597b75',
          lotusAqua2 = '#5e857a',
          lotusTeal1 = '#4e8ca2',
          lotusTeal2 = '#6693bf',
          lotusTeal3 = '#5a7785',
          lotusCyan = '#d7e3d8',
        },
      },
    },
  },
  {
    'navarasu/onedark.nvim',
    priority = 1000,
    lazy = false,
    opts = {
      -- Main options --
      style = 'warmer', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
      transparent = false, -- Show/hide background
      term_colors = true, -- Change terminal color as per the selected theme style
      ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
      cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
      -- toggle theme style ---
      toggle_style_key = '<leader>ts', -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
      toggle_style_list = { 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light' }, -- List of styles to toggle between
      -- Change code style ---
      -- Options are italic, bold, underline, none
      -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
      code_style = {
        comments = 'none',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none',
      },
      -- Lualine options --
      lualine = {
        transparent = false, -- lualine center bar transparency
      },
      -- Custom Highlights --
      colors = {}, -- Override default colors
      highlights = {}, -- Override highlight groups
    },
  },
}
