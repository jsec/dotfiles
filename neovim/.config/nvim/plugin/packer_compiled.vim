" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time("Luarocks path setup", true)
local package_path_str = "/Users/jsec/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/jsec/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/jsec/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/jsec/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/jsec/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time("Luarocks path setup", false)
time("try_loadstring definition", true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

time("try_loadstring definition", false)
time("Defining packer_plugins", true)
_G.packer_plugins = {
  ["auto-pairs"] = {
    loaded = true,
    path = "/Users/jsec/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/Users/jsec/.local/share/nvim/site/pack/packer/start/coc.nvim"
  },
  delimitMate = {
    loaded = true,
    path = "/Users/jsec/.local/share/nvim/site/pack/packer/start/delimitMate"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\n+\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\16_galaxyline\frequire\0" },
    loaded = true,
    path = "/Users/jsec/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  hop = {
    config = { "\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/Users/jsec/.local/share/nvim/site/pack/packer/start/hop"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/Users/jsec/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  nerdcommenter = {
    loaded = true,
    path = "/Users/jsec/.local/share/nvim/site/pack/packer/start/nerdcommenter"
  },
  ["nord-vim"] = {
    loaded = true,
    path = "/Users/jsec/.local/share/nvim/site/pack/packer/start/nord-vim"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/jsec/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/jsec/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/jsec/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/jsec/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/jsec/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/jsec/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ultisnips = {
    loaded = true,
    path = "/Users/jsec/.local/share/nvim/site/pack/packer/start/ultisnips"
  },
  ["vim-ags"] = {
    loaded = true,
    path = "/Users/jsec/.local/share/nvim/site/pack/packer/start/vim-ags"
  },
  ["vim-better-whitespace"] = {
    loaded = true,
    path = "/Users/jsec/.local/share/nvim/site/pack/packer/start/vim-better-whitespace"
  },
  ["vim-coffee-script"] = {
    loaded = true,
    path = "/Users/jsec/.local/share/nvim/site/pack/packer/start/vim-coffee-script"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/Users/jsec/.local/share/nvim/site/pack/packer/start/vim-easy-align"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/jsec/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-jsx-typescript"] = {
    loaded = true,
    path = "/Users/jsec/.local/share/nvim/site/pack/packer/start/vim-jsx-typescript"
  },
  ["vim-node"] = {
    loaded = true,
    path = "/Users/jsec/.local/share/nvim/site/pack/packer/start/vim-node"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/Users/jsec/.local/share/nvim/site/pack/packer/start/vim-polyglot"
  },
  ["vim-rails"] = {
    loaded = true,
    path = "/Users/jsec/.local/share/nvim/site/pack/packer/start/vim-rails"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/Users/jsec/.local/share/nvim/site/pack/packer/start/vim-snippets"
  },
  ["vim-tmux-focus-events"] = {
    loaded = true,
    path = "/Users/jsec/.local/share/nvim/site/pack/packer/start/vim-tmux-focus-events"
  }
}

time("Defining packer_plugins", false)
-- Config for: galaxyline.nvim
time("Config for galaxyline.nvim", true)
try_loadstring("\27LJ\2\n+\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\16_galaxyline\frequire\0", "config", "galaxyline.nvim")
time("Config for galaxyline.nvim", false)
-- Config for: hop
time("Config for hop", true)
try_loadstring("\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0", "config", "hop")
time("Config for hop", false)
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
