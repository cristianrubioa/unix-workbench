# Environmental Variables (Bash)

# Create Dir
mkdir Commands

# Open bash profile
nano ~/.bash_profile

# Add aliases e.g. :
alias docs='cd ~/Documents'
alias edbp='nano ~/.bash_profile'

# Export environmental variable
export PATH=~/Code/Commands:$PATH
source ~/Code/addseq2.sh

# Save changes (^o) and Close nano (^x) 

# Update bash profile
source ~/.bash_profile

# Finally run your commands e.g. :
addseq2 9 8 7