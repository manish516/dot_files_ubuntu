fzf --preview "Get-Content {}"
rg --version
rg -i "mac" .\main.c
pandoc document.tex -o monn.docx
git init
git config user.name "manish"
git config user.email "manish@local"
git config user.email "manish516@outlook.com"
git config user.name "manish516"
git config core.autocrlf false # only for keil win_os
git config --local user.name "Your Remote Name"
git config --local user.email "your-remote-email@example.com"
git config --list   #to view the config (global)
git config --local --list   #to view the config (local)
rm ~/.gitconfig # remove the git config file -- for linux
vim ~/.gitconfig # edit
git config --global --unset user.name #unset
git config --global --unset user.email #unset
git remote add origin <ssh_repo_link> # Connect Your Remote Repository
git add .
git commit -m "modbus and mqtt mode sections -- merge"
git commit --amend -m "message" #If the last commit message is wrong, and you want to change only the message
git push -u origin main # push the main branch
git worktree add -b counter_guide_add_try ../3_bak_2_counter
git worktree list
git worktree move ../zz_modbus_n_mqtt_merge ../4_bak_3_modbus_n_mqtt_merge # rename the worktree
git worktree remove ../4_bak_3_test # remove the worktree, only work when there is no unstage changes
git worktree remove --force ../4_bak_3_test # remove the worktree forcefully
git checkout -b modbus_n_mqtt_section_merge a6b6366cae4649e51d996e925f23e21cb4950e80
git log --oneline
git log --oneline -n 5 # View recent commits
git log --oneline --graph --all
git log --oneline --graph --decorate --all
git log --author-'manish' # find commits made by a particular author
git diff --cached #shows exactly what is currently staged and will be included in the next commit
git restore .  # to discard changes and restore previous committed content
git restore main.c # to restore the file
git restore --staged . # to unstage change (keep modified changes), means reverse the (git add) command
git restore --staged <filename> # to unstage change (only a file), means reverse the (git add) command
git reset --hard <commit_id> # Remove the specific commit and discard the changes
git reset --hard HEAD~1 # Remove the HEAD commit and discard the changes
git reset --soft HEAD~1 # Remove the HEAD commit and discard the changes
git reset HEAD~1 # Remove the commit and unstage the changes (keep modified changes)
git status # show the stage and unstage status
git branch # list all the branch
git branch -a #list remote branch also
git branch -d modbus_n_mqtt_section_merge # delete the branch 
git branch -m oldname newname   #branch rename  
git show e1b1f5:try.c
git show e1b1f5:lwjson_examples/src/try.c
git show 4di_do_dnt_3_8/Core/Src/main.c
git tag -a v1.0.0 -m "Version 1.0.0" # create a tag locally
git tag -a v1.0.0 <commit_hash> -m "Version 1.0.0" # Create tag on a specific commit
git push origin v1.0.0 # push the local tag
git push --tags # push all the local tags
git push -u origin main # push the main branch
git tag # list all the tag (locally)
git tag -d v1.0 #remove tag locally
git push origin --delete v1.0 #remove tag globaly
git ls-remote --tags origin # list all the tag (remotely)
ssh -T git@github.com #to test ssh conn to git 
git show <commit_hash>:<file_path>  # not show raw content, not +-
git diff 26d72d1 c6955e6 #view diff between two commits
git diff main rough #view diff between two branches
git checkout master_or_main #switch to main branch
git merge <branch_name> # merge the branch to master but first switch to main branch
git revert -m 1 <merge-commit-hash> #revert the merge
git archive <commit-hash> -o project.zip  #make zip folder at particualr commit
git archive -o project.zip HEAD #make zip folder at HEAD commit
unzip project.zip -d new_project #this command works in linux 
git fetch #Fetch the latest branches from GitHub
explorer .
ii .
git diff 7fc2a69 1d271bc
git diff 7fc2a69 1d271bc -- .\document.tex
idf.py build
idf.py -p COM5 flash monitor
code .
clangd --version
clang-format -dump-config
clangd --version
gcc --version
gcc -g -O0 -Wall main.c -o main.exe
touch manish.c
npm --version
node --version
nvim diff .\4_json_parsing.c .\main.c
=======================================================
ggl
git init
git config user.name "manish516"
git config user.email "manish516@outlook.com"
git add .
git status # show the stage and unstage status
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:manish516/dot_files_win_os.git
git push -u origin main
git add .
git status # show the stage and unstage status
git commit -m "23_jun_26"
git push -u origin main
git clone git@github.com:manish516/dot_files_win_os.git
git log --oneline
git status
git add .
git commit -m "files re-shuffles"
git status
git config user.name "manish516"
git config user.email "manish516@outlook.com"
git add .
git status
git push -u origin main
git commit -m "files re-shuffles"
git push -u origin main
git status
git add .
git status
git commit -m "add bat scrpits and gitignore file "
git push -u origin main
find /usr -name git-prompt.sh 2>/dev/null
htop
curl -LsSf https://astral.sh/uv/install.sh | sh
uv --version
mkdir py_test
uv init
uv venv
source .venv/bin/activate
uv add requests
python main.py 
uv add customtkinter
python main.py 
python --version
python3 --version
sudo apt update
sudo apt install python3-tk
python3 -m tkinter
python main.py
python 2-main.py 
python main.py
python
python3
date
cd /mnt/d/rr_tcp_md
uv --version
git log --oneline
python main.py
python3 main.py
source .venv/bin/activate
python3 main.py
git log --oneline
git config --list   #to view the config (global)
git status
cd /mnt/c/Users/manish/Desktop/c_rr/0
cal 1989
sudo apt update
sudo apt install ncal
node --version
python3
cd /mnt/c/Users/manish/Desktop/sddcvv
glg
./main.exe 
gdb ./main.exe 
ping debuginfod.ubuntu.com
ping google.com
curl -I https://debuginfod.ubuntu.com
gdb --version
ping google.com
curl -I https://debuginfod.ubuntu.com
nslookup debuginfod.ubuntu.com
sudo apt install bind9-dnsutils
nslookup debuginfod.ubuntu.com
sudo apt install libc6-dbg
nslookup google.com
gdb ./main.exe 
cd /home/mp_ub/git_code/c_repo/c_files/d/string/rr_del
gdb ./main.exe 
./main.exe 
curl -I google.com
curl -I 192.168.1.70
python3
glg
cd /mt
cd /mnt
python
python3
pip3 list
sudo apt install python3-pip
python3 -m pip install ipython
pip3 list
python3 -m pip install ipython
sudo apt install python3-ipython
python3
tmux
cd ~/git_code
cd /home/mp_ub/git_code
cd ~/.config/bat
:q
ffl
./main.exe 
gdb main.exe
cd deee/
cd rr
python3
ipython --version
pip3 list
ipython3 --version
ipython
ipython3
sudo ipython
sudo ipython3
pip3 list
ipython
ipython3
sudo apt install python3-ipython
ipython
ipython3
dpkg -L python3-ipython | grep bin
dpkg -L python3-ipython
apt search ipython
sudo apt remove python3-ipython
sudo apt update
sudo apt install ipython3
ipython --version
ipython3 --version
pip3 install https://github.com/idanpa/calcpy/archive/main.zip
pip3 install --break-system-packages https://github.com/idanpa/calcpy/archive/main.zip
mkdir cal
cd cal/
calcpy
mkdir manual
cd manual/
calcpy_tut.md
man 3 memset
calcpy
man 3 memset
man 3 snprintf
man 3 memset
gdb 8
gdb
gdb main.exe
wget -P ~ https://github.com/cyrus-and/gdb-dashboard/raw/master/.gdbinit
gdb main.exe
tmux
sudo apt update
sudo apt install python3-numpy
cd macs/
grep macs.txt EA
grep EA ./macs.txt 
cd ..
node --version
npm --version
node-red --version
npm list -g node-red
npm list
git log --oneline --graph --decorate --all
git diff 
git log --oneline --graph --decorate --all
git diff 33bb608
git log --oneline --graph --decorate --all
git show 
git log --oneline --graph --decorate --all
git diff eba8194 33bb608 
git status 33bb608 
git show 33bb608 
git diff --name-only HEAD~1 HEAD
git diff --name-only HEAD~1 HEAD | grep *.c
git diff --name-only HEAD~1 HEAD | grep -i *.c
git diff --name-only HEAD~1 HEAD -- "*.c"
git diff --name-only HEAD~1 HEAD -- "*.c" -- "*.h"
git diff --name-only HEAD~1 HEAD -- "*.c" "*.h"
git log --oneline --graph --decorate --all
git diff --name-status 33bb608 456efc3
git show 33bb608:cal_4di_8ai/Core/Src/main.c
git diff 33bb608:cal_4di_8ai/Core/Src/main.c
git diff 33bb608 -- cal_4di_8ai/Core/Src/main.c
git diff 33bb608 456efc3  -- cal_4di_8ai/Core/Src/main.c
cd -
cd --
cd /mnt/c/Users/manish/Desktop/1
tmux
git --help
git help -g
git tutorial
git --help tutorial
man 3 memset
man 3 snprintf
git log --oneline --graph --decorate --all
git diff --name-only 33bb608
git diff --name-only 456efc3
git diff --name-only 456efc3 -- ".c"
git diff --name-only 456efc3 -- "*.c"
exit
git log --oneline --graph --decorate --all
git diff --name-only HEAD~1 HEAD -- "*.c" "*.h"
git diff --side-by-side HEAD~1 HEAD -- main.c
git diff --side-by-side HEAD~1 HEAD -- with_count_4di_8ai/Core/Src/main.c
git difftool HEAD~1 HEAD -- main.c
git difftool HEAD~1 HEAD -- with_count_4di_8ai/Core/Src/main.c
git difftool HEAD~1 HEAD
git log --oneline --graph --decorate --all
git difftool
tmux attach
cd macs/
git clone https://github.com/nakst/gf.git
cd gf/
./build.sh
cd macs/
grep -i "EA:11:22:77:C2:73" macs.txt 
tmux
cd macs/
grep -i "EA:11:22:73:EA:52" macs.txt 
touch jkk.txt
echo >> jkk.txt 
echo "fsdf">> jkk.txt 
echo "manish" >> jkk.txt 
hhl
echo "EA:11:22:73:EA:52" >> macs.txt 
grep -i "EA:11:22:73:EA:52" macs.txt 
grep -i "EA:11:22:7F:FA:45" macs.txt 
echo "EA:11:22:7F:FA:45" >> macs.txt 
grep -i "EA:11:22:7F:FA:45" macs.txt 
grep -i "EA:11:22:69:7A:45" macs.txt 
echo "EA:11:22:69:7A:45" >> macs.txt 
grep -i "EA:11:22:69:7A:45" macs.txt 
cd macs/
gdb --version
python3 -m pip install --user pipx
[200~python3 -m pip install --user pipx --break-system-packages
python3 -m pip install --user pipx --break-system-packages
python3 -m userpath append ~/.local/bin
pipx install gdbgui
exit
cd /mnt/c/Users/manish/Desktop/macs/rr
cd --
cd -
cd ~/git_code/c_repo/c_files/d/array/rr/rr 
man 3 char
man 1 char
man 2 char
./main.exe 
gdb main.exe
gdbgui
tmux
cat ./.tmux.conf 
sls
mv -v config bak_config
cat array_diff_values.c 
gcc -g -O0 -Wall array_diff_values.c -o main.exe
./main.exe 
cd /home/mp_ub/git_code/c_repo/c_files/d/array/rr/rr
cat array_diff_values.c 
gdb main.exe 
grep -i "EA:11:22:7E:12:51" macs.txt 
echo "EA:11:22:7E:12:51" >> macs.txt 
grep -i "EA:11:22:7E:12:51" macs.txt 
cat macs.txt 
grep -i "EA:11:22:7E:12:51" macs.txt
grep -i "EA:11:22:7E:C2:56" macs.txt
echo "EA:11:22:7E:C2:56" >> macs.txt 
cat macs.txt 
tmux
gcc -S asm_1.c 
cat asm_1.s
cat asm_1.c
cat asm_1.s 
gcc -O2 -S asm_1.c
cat asm_1.s
cd macs/
grep -i "EA:11:22:7E:C2:56" macs.txt
grep -i "EA:11:22:65:7A:45" macs.txt
echo "EA:11:22:65:7A:45" >> macs.txt 
grep -i "EA:11:22:65:7A:45" macs.txt
grep -i "EA:11:22:7F:C2:73" macs.txt
echo "EA:11:22:7F:C2:73" >> macs.txt 
grep -i "EA:11:22:7F:C2:73" macs.txt
grep -i "EA:11:22:6E:FA:45" macs.txt
grep -i "EA:11:22:65:FA:78" macs.txt
echo "EA:11:22:65:FA:78" >> macs.txt 
grep -i "EA:11:22:65:FA:78" macs.txt
cat macs.txt 
cat macs.txt | wc -l
cat macs.txt | grep -i july | wc -l
grep -i "EA:11:22:6E:FA:45" macs.txt
echo "EA:11:22:6E:FA:45" >> macs.txt 
grep -i "EA:11:22:6E:FA:45" macs.txt
cat macs.txt 
grep -i "EA:11:22:6D:C2:45" macs.txt
echo "EA:11:22:6D:C2:45" >> macs.txt 
cat macs.txt 
grep -i "EA:11:22:6D:C2:45" macs.txt
grep -i "EA:11:22:7B:FA:58" macs.txt
echo "EA:11:22:7B:FA:58" >> macs.txt 
grep -i "EA:11:22:7B:FA:58" macs.txt
cat macs.txt | wc -l
cat macs.txt | grep -i july | wc -l
cat macs.txt 
cat macs.txt | grep -i 45
tmux
htop
calcpy
jobs
ps aux | grep 'calcpy'
kill -15 2892
ps aux | grep 'calcpy'
fg
fg 2892
ps aux | grep 'calcpy'
fg
jobs
kill -15 4326
ps aux | grep 'calcpy'
tmux
cat .gdbinit 
gcc -g -O0 -Wall array_diff_values.c -o main.exe
./main.exe 
xx
gdb main.exe 
gcc -g -O0 -Wall array_diff_values.c -o main.exe
gdb main.exe 
tmux attach
tmux
gl
tmux
cal 2026
grep -i "EA:11:22:7B:FA:58" macs.txt
grep -i "EA:11:22:68:72:62" macs.txt
echo "EA:11:22:68:72:62" >> macs.txt 
grep -i "EA:11:22:68:72:62" macs.txt
grep -i "EA:11:22:63:FA:78" macs.txt
echo "EA:11:22:63:FA:78" >> macs.txt 
grep -i "EA:11:22:63:FA:78" macs.txt
cat macs.txt 
grep -i "EA" macs.txt | wc -l
tmux
cd -
cd macs/
git log --oneline --graph --decorate --all
git status
git config --list   #to view the config (global)
git add .
git commit -m "add some improvement in nvim init and pshell profilie file -- add some folders, command_hints alias ggc for windows"
git status
git push origin main
grep -i "EA:11:22:63:C2:55" macs.txt
echo "EA:11:22:63:C2:55" >> macs.txt 
grep -i "EA:11:22:63:C2:55" macs.txt
tmux
cd macs/
grep -i "EA:11:22:6E:42:43" macs.txt
grep -i "EA:11:22:61:7A:44" macs.txt
grep -i "EA:11:22:60:FA:59" macs.txt
echo "EA:11:22:6E:42:43" >> macs.txt 
echo "EA:11:22:60:FA:59" >> macs.txt 
echo "EA:11:22:61:7A:44" >> macs.txt 
cat macs.txt 
grep -i "EA:11:22:66:C2:43" macs.txt
echo "EA:11:22:66:C2:43" >> macs.txt 
grep -i "EA:11:22:7F:CA:4C" macs.txt
grep -i "EA:11:22:7C:FA:59" macs.txt
grep -i "EA:11:22:7F:CA:4C" macs.txt
echo "EA:11:22:7F:CA:4C" >> macs.txt 
cat macs.txt 
echo "EA:11:22:7C:FA:59" >> macs.txt 
grep -i "EA:11:22:6D:FA:58" macs.txt
echo "EA:11:22:6D:FA:58" >> macs.txt 
grep -i "EA:11:22:66:CA:5A" macs.txt
echo "EA:11:22:66:CA:5A" >> macs.txt 
cat macs.txt 
grep -i "EA:11:22:6F:CA:4C" macs.txt
cd macs/
cat macs.txt 
grep -i "EA:11:22:6F:CA:4C" macs.txt
echo "EA:11:22:6F:CA:4C" >> macs.txt 
grep -i "EA:11:22:61:FA:59" macs.txt
echo "EA:11:22:6F:CA:4C" >> macs.txt 
grep -i "EA:11:22:61:FA:59" macs.txt
echo "EA:11:22:61:FA:59" >> macs.txt 
grep -i "EA:11:22:61:FA:59" macs.txt
grep -i "EA:11:22:61:FA:78" macs.txt
echo "EA:11:22:61:FA:78" >> macs.txt 
grep -i "EA:11:22:61:FA:78" macs.txt
grep -i "EA:11:22:60:C2:45" macs.txt
cat macs.txt 
echo "EA:11:22:60:C2:45" >> macs.txt 
grep -i "EA:11:22:60:C2:45" macs.txt
cd macs/
grep -i "EA:11:22:60:7A:45" macs.txt
echo "EA:11:22:60:7A:45" >> macs.txt 
cat macs.txt 
cat macs.txt | wc -l
grep -i "//" macs.txt
grep -i "//" macs.txt | wc -l
grep -i "EA:11:22:66:C2:45" macs.txt
echo "EA:11:22:66:C2:45" >> macs.txt 
grep -i "EA:11:22:6C:FA:59" macs.txt
echo "EA:11:22:6C:FA:59" >> macs.txt 
grep -i "EA:11:22:6C:FA:59" macs.txt
grep -i "EA:11:22:6D:42:55" macs.txt
echo "EA:11:22:6D:42:55" >> macs.txt 
cat macs.txt 
cd macs/
grep -i "EA:11:22:6D:42:55" macs.txt
grep -i "EA:11:22:68:42:41" macs.txt
echo "EA:11:22:68:42:41" >> macs.txt 
grep -i "EA:11:22:64:C2:43" macs.txt
echo "EA:11:22:64:C2:43" >> macs.txt 
grep -i "EA:11:22:7A:CA:5A" macs.txt
echo "EA:11:22:7A:CA:5A" >> macs.txt 
grep -i "EA:11:22:6A:FA:58" macs.txt
grep -i "EA:11:22:49:CA:4F" macs.txt
echo "EA:11:22:49:CA:4F" >> macs.txt 
echo "EA:11:22:6A:FA:58" >> macs.txt 
grep -i "EA:11:22:70:C2:43" macs.txt
echo "EA:11:22:70:C2:43" >> macs.txt 
grep -i "EA:11:22:70:C2:49" macs.txt
echo "EA:11:22:70:C2:49" >> macs.txt 
grep -i "EA:11:22:6F:FA:44" macs.txt
echo "EA:11:22:6F:FA:44" >> macs.txt 
grep -i "EA:11:22:68:FA:44" macs.txt
echo "EA:11:22:68:FA:44" >> macs.txt 
grep -i "EA:11:22:62:CA:4C" macs.txt
cat macs.txt 
grep -i "EA:11:22:62:CA:4C" macs.txt
echo "EA:11:22:62:CA:4C" >> macs.txt 
grep -i "EA:11:22:6F:FA:45" macs.txt
echo "EA:11:22:6F:FA:45" >> macs.txt 
grep -i "EA:11:22:62:FA:59" macs.txt
echo "EA:11:22:62:FA:59" >> macs.txt 
grep -i "EA:11:22:63:C2:77" macs.txt
grep -i "EA:11:22:67:CA:4E" macs.txt
echo "EA:11:22:67:CA:4E" >> macs.txt 
grep -i "EA:11:22:63:C2:77" macs.txt
echo "EA:11:22:63:C2:77" >> macs.txt 
grep -i "EA:11:22:63:C2:77" macs.txt
cat macs.txt 
grep -i "//" macs.txt | wc -l
grep -i "EA" macs.txt | wc -l
grep -i "EA:" macs.txt | wc -l
cd /mnt/d
git status
ping google.com
sudo apt update
sudo apt install file 
curl -fsSL https://yazi-rs.github.io/builds/yazi-keyring.gpg   | sudo tee /usr/share/keyrings/yazi-keyring.gpg >/dev/null
echo 'deb [signed-by=/usr/share/keyrings/yazi-keyring.gpg] https://yazi-rs.github.io/builds/ stable main'   | sudo tee /etc/apt/sources.list.d/yazi.list >/dev/null
sudo apt update
sudo apt install yazi
yazi --version
yazi
cd /mnt/d
yazi
cd ~/.cache/yazi/
yazi --debug
ya --debug
yazi --version
yazi --help
echo "TERM=$TERM"
echo "TERM_PROGRAM=$TERM_PROGRAM"
cd /
where yazi
cd /
yazi
ps -p 1 -o comm=
systemctl status systemd-tmpfiles-clean.timer
systemctl list-timers systemd-tmpfiles-clean.timer
mkdir ~/.config/yazi/
cd ~/.config/yazi/
touch tt{1..9}.html
yazi
y
yazi
cd /home/mp_ub/cheatsheet/test_ya
yazi
y
fg
y
fg
y
zoxide --version
zoxide query -l
cd ..
zoxide query -l
echo 'eval "$(zoxide init bash)"' >> ~/.bashrc
source ~/.bashrc
zoxide query -l
ya pkg install
cat package.toml 
yazi --version
ya pkg list
ya pkg add yazi-rs/plugins:zoxide
rm -vrf ~/.cache/yazi/packages/3db547c6a883e54d90397a0bac9b736f
ya pkg install
fzf --version
zoxide --version
sudo apt install fzf
snap search fzf
mkdir tt
cd tt/
curl -LO https://github.com/junegunn/fzf/releases/download/v0.74.3/fzf-0.74.3-linux_amd64.tar.gz
wget https://github.com/junegunn/fzf/releases/download/v0.74.3/fzf-0.74.3-linux_amd64.tar.gz
ping google.com
curl -LO https://github.com/junegunn/fzf/releases/download/v0.74.3/fzf-0.74.3-linux_amd64.tar.gz
wget https://github.com/junegunn/fzf/releases/download/v0.74.3/fzf-0.74.3-linux_amd64.tar.gz
ping google.com
wget https://github.com/junegunn/fzf/releases/download/v0.74.3/fzf-0.74.3-linux_amd64.tar.gz
ya pkg install
tar -xzf fzf-0.74.3-linux_amd64.tar.gz 
sudo mv -v ./fzf ..
cd ..
command -v fzf
sudo find / -type f -name fzf 2>/dev/null
sudo mv -v /home/mp_ub/.local/bin/fzf .
command -v fzf
fzf --version
command -v zoxide
zoxide --version
curl -LO https://github.com/ajeetdsouza/zoxide/releases/download/v0.10.0/zoxide-0.10.0-x86_64-unknown-linux-musl.tar.gz
tar -xzf zoxide-0.10.0-x86_64-unknown-linux-musl.tar.gz 
sudo rm -v /usr/bin/zoxide
command -v zoxide
sudo mv -v /home/mp_ub/.local/bin/tt/zoxide .
zoxide --version
cd ~/.config/yazi
ya pkg install
cd /home/mp_ub/.config/yazi
ya pkg install
fzf --version
zoxide --version
cat package.toml 
ya pkg remove yazi-rs/plugins:fzf
ya pkg delete yazi-rs/plugins:fzf
ya pkg delete yazi-rs/plugins:zoxide
ya pkg list
ya pkg add yazi-rs/plugins:fzf
cat package.toml 
y
ya pkg list
y
cd /mnt/d
y
tmux
tmux kill-session
tmux ls
y
tmux
tmux kill-session
cd /mnt/d
tmux
y
tmux
curl -fsSL https://herdr.dev/install.sh | sh
touch kk[1..8].html
y
cd ~/.local/share/
y
xx
watch -n 1 date
xx
sls
xx
tmux
herdr
xx
tmux a
xx
tmux ls
gd
cd /mnt/d
y
cat config.toml 
herdr server stop
y
grep -iE 'kitty|graphic|image|terminal' ~/.config/herdr/herdr-server.log | tail -30
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
cd /mnt/d
herdr
xx
kitty
kitty & disown
~/.local/kitty.app/bin/kitty & disown
cd /mnt/d
y
xx
cd /mnt/d
y
y
cd /mnt/d
y
y
herdr
~/.local/kitty.app/bin/kitty & disown
cd /mnt/d
herdr
cat config.toml 
herdr --default-config
y
cd /home/mp_ub/.config/herdr
cat config.toml 
herdr --default-config > ~/.config/herdr/config.toml
nv config.toml 
cat config.toml 
herdr
nv config.toml 
y
xx
y
git log --oneline --graph --decorate --all
git status
git add .
git status
git commit -m "some changes and add yazi config"
git log --oneline --graph --decorate --all
git push origin main
y
grep -i "EA:11:22:6E:C2:45" macs.txt
echo "//8do_22_9_2026" >> macs.txt 
echo "EA:11:22:6E:C2:45" >> macs.txt 
y
zi
git clone git@github.com:manish516/mac_dot_files_and_config_dir.git
ex
y
git log --oneline --graph --decorate --all
y
git fetch origin
y
git log --oneline --graph --decorate --all
cat symlink_cmds.txt 
git pull origin main
git log --oneline --graph --decorate --all
cat symlink_cmds.txt 
y
git status
git log --oneline --graph --decorate --all
git status
