#!/usr/bin/env bash
# Carbon Mochi Tmux Theme — Pink Accent (#ff669e)

set -g mode-style "fg=#ff669e,bg=#2f3237"
set -g message-style "fg=#ff669e,bg=#2f3237"
set -g message-command-style "fg=#ff669e,bg=#2f3237"

set -g pane-border-style "fg=#2f3237"
set -g pane-active-border-style "fg=#ff669e"

set -g status "on"
set -g status-justify "left"
set -g status-style "fg=#ff669e,bg=#161718"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#0a0a0a,bg=#ff669e,bold] #S #[fg=#ff669e,bg=#161718,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#161718,bg=#161718,nobold,nounderscore,noitalics]#[fg=#ff669e,bg=#161718] #{prefix_highlight} #[fg=#2f3237,bg=#161718,nobold,nounderscore,noitalics]#[fg=#ff669e,bg=#2f3237] %Y-%m-%d  %H:%M #[fg=#ff669e,bg=#2f3237,nobold,nounderscore,noitalics]#[fg=#0a0a0a,bg=#ff669e,bold] #h "

setw -g window-status-activity-style "underscore,fg=#56575d,bg=#161718"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#56575d,bg=#161718"
setw -g window-status-format "#[fg=#161718,bg=#161718,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#161718,bg=#161718,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#161718,bg=#2f3237,nobold,nounderscore,noitalics]#[fg=#ff669e,bg=#2f3237,bold] #I  #W #F #[fg=#2f3237,bg=#161718,nobold,nounderscore,noitalics]"

set -g @prefix_highlight_output_prefix "#[fg=#d5b05f]#[bg=#161718]#[fg=#161718]#[bg=#d5b05f]"
set -g @prefix_highlight_output_suffix ""
