#!/usr/bin/env bash
# Carbon Caffeine Tmux Theme — Peach Accent (#ffe0c2)

set -g mode-style "fg=#ffe0c2,bg=#222222"
set -g message-style "fg=#ffe0c2,bg=#222222"
set -g message-command-style "fg=#ffe0c2,bg=#222222"

set -g pane-border-style "fg=#201e18"
set -g pane-active-border-style "fg=#ffe0c2"

set -g status "on"
set -g status-justify "left"
set -g status-style "fg=#ffe0c2,bg=#191919"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#111111,bg=#ffe0c2,bold] #S #[fg=#ffe0c2,bg=#191919,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#191919,bg=#191919,nobold,nounderscore,noitalics]#[fg=#ffe0c2,bg=#191919] #{prefix_highlight} #[fg=#201e18,bg=#191919,nobold,nounderscore,noitalics]#[fg=#ffe0c2,bg=#201e18] %Y-%m-%d  %H:%M #[fg=#ffe0c2,bg=#201e18,nobold,nounderscore,noitalics]#[fg=#111111,bg=#ffe0c2,bold] #h "

setw -g window-status-activity-style "underscore,fg=#b4b4b4,bg=#191919"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#b4b4b4,bg=#191919"
setw -g window-status-format "#[fg=#191919,bg=#191919,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#191919,bg=#191919,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#191919,bg=#222222,nobold,nounderscore,noitalics]#[fg=#ffe0c2,bg=#222222,bold] #I  #W #F #[fg=#222222,bg=#191919,nobold,nounderscore,noitalics]"

set -g @prefix_highlight_output_prefix "#[fg=#ffe0c2]#[bg=#191919]#[fg=#191919]#[bg=#ffe0c2]"
set -g @prefix_highlight_output_suffix ""
