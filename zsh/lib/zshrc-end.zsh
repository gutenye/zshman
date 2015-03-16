# init theme
for pathspec ($zcm_themes) do
  zsh_init_theme $pathspec
done

# init keymap
for pathspec ($zcm_keymaps) do
  zsh_init_keymap $pathspec
done
