#!/usr/bin/env bash
# Carbon Darkmatter Tmux Theme — Terracotta Accent (#e78a53)

set -g mode-style "fg=#e78a53,bg=#222222"
set -g message-style "fg=#e78a53,bg=#222222"
set -g message-command-style "fg=#e78a53,bg=#222222"

set -g pane-border-style "fg=#222222"
set -g pane-active-border-style "fg=#e78a53"

set -g status "on"
set -g status-justify "left"
set -g status-style "fg=#e78a53,bg=#121212"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#121113,bg=#e78a53,bold] #S #[fg=#e78a53,bg=#121212,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#121212,bg=#121212,nobold,nounderscore,noitalics]#[fg=#e78a53,bg=#121212] #{prefix_highlight} #[fg=#222222,bg=#121212,nobold,nounderscore,noitalics]#[fg=#e78a53,bg=#222222] %Y-%m-%d  %H:%M #[fg=#e78a53,bg=#222222,nobold,nounderscore,noitalics]#[fg=#121113,bg=#e78a53,bold] #h "

setw -g window-status-activity-style "underscore,fg=#888888,bg=#121212"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#888888,bg=#121212"
setw -g window-status-format "#[fg=#121212,bg=#121212,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#121212,bg=#121212,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#121212,bg=#222222,nobold,nounderscore,noitalics]#[fg=#e78a53,bg=#222222,bold] #I  #W #F #[fg=#222222,bg=#121212,nobold,nounderscore,noitalics]"

set -g @prefix_highlight_output_prefix "#[fg=#fbcb97]#[bg=#121212]#[fg=#121212]#[bg=#fbcb97]"
set -g @prefix_highlight_output_suffix ""
