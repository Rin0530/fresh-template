#! /usr/bin/fish
mkdir -p /home/vscode/.config/fish/completions
echo 'deno completions fish | source' >> ~/.config/fish/completions/deno.fish
echo 'complete -c deno -f -n "__fish_seen_subcommand_from task" -a '\''(deno task 2>&1 | cat | grep -E "^-" | perl -pe "s/\e\[[0-9;]*m//g" | cut -c 3-)'\'' -d "task list"' >> ~/.config/fish/completions/deno.fish