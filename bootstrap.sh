#!/usr/bin/env bash

stow --target=$HOME nvim kitty fish

tide configure --auto --style=Classic --prompt_colors='True color' --classic_prompt_color=Dark --show_time='24-hour format' --classic_prompt_separators=Vertical --powerline_prompt_heads=Sharp --powerline_prompt_tails=Flat --powerline_prompt_style='One line' --prompt_spacing=Compact --icons='Few icons' --transient=No
