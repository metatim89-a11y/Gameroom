# ./.project.bashrc v1.0
# Project-specific environment configuration

export PROJECT_ROOT="/data/data/com.termux/files/home/gameroom"
export PATH="$PROJECT_ROOT/.bin:$PATH"

# Load aliases if they exist
if [ -f "$PROJECT_ROOT/.project.bashaliases" ]; then
    source "$PROJECT_ROOT/.project.bashaliases"
fi

# Display MOTD
if [ -f "$PROJECT_ROOT/motd" ]; then
    cat "$PROJECT_ROOT/motd"
fi
