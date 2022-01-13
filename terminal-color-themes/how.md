# how to change color scheme

To change themes a application called [dconf](https://wiki.gnome.org/Projects/dconf) is needed.\
create a new terminal color profile the termianl GUI thing\
\
```dconf dump /org/gnome/terminal/legacy/profiles:/```\
\
this should show show something like:<br>

```[/]
list=['b1dcc9dd-5262-4d8d-a863-c897e6d979b9', '92c5fa21-028b-4f54-bc98-58b6d3c495e4']

[:92c5fa21-028b-4f54-bc98-58b6d3c495e4]
use-theme-colors=true
visible-name='nord'

[:b1dcc9dd-5262-4d8d-a863-c897e6d979b9]
background-color='rgb(20,20,20)'
background-transparency-percent=0
bold-color-same-as-fg=true
bold-is-bright=false
cursor-colors-set=false
cursor-foreground-color='rgb(208,207,204)'
font='Hack 12'
foreground-color='rgb(208,207,204)'
highlight-colors-set=false
login-shell=false
palette=['rgb(23,20,33)', 'rgb(192,28,40)', 'rgb(38,114,162)', 'rgb(162,115,76)', 'rgb(11,63,144)', 'rgb(86,21,137)', 'rgb(42,161,179)', 'rgb(208,207,204)', 'rgb(94,92,100)', 'rgb(246,97,81)', 'rgb(15,171,216)', 'rgb(233,173,12)', 'rgb(51,209,143)', 'rgb(192,97,203)', 'rgb(51,199,222)', 'rgb(255,255,255)']
text-blink-mode='unfocused'
use-system-font=false
use-theme-colors=false
use-theme-transparency=false
use-transparent-background=true
visible-name='slightly-blue'
```

i want to change the color scheme known as 'slightly-blue'\
its ID is : b1dcc9dd-5262-4d8d-a863-c897e6d979b9\
\
so i run\
```dconf load /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/ < first-theme.dconf```

## more info

[cool link](https://aamnah.com/ubuntu/create-theme-gnome-terminal-ultimate-guide)<br>
google for more info