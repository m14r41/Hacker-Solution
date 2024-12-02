The errors you're seeing indicate that your `.zshrc` file is trying to source plugins that are not installed on your system. Specifically, it's looking for the following files that are either missing or not properly set up:

1. **zsh-autosuggestions**: Used for suggesting commands as you type based on history.
2. **zsh-autocomplete**: Used to provide autocomplete suggestions.
3. **zsh-syntax-highlighting**: Used to highlight commands based on syntax as you type.

Here's how to fix these issues:

### 1. **Install Missing Plugins**

#### **For zsh-autosuggestions**:
```bash
# Clone the zsh-autosuggestions plugin from GitHub
git clone https://github.com/zsh-users/zsh-autosuggestions.git /usr/share/zsh-autosuggestions
```

#### **For zsh-autocomplete**:
```bash
# Clone the zsh-autocomplete plugin from GitHub
git clone https://github.com/marlonrichert/zsh-autocomplete.git /usr/share/zsh-autocomplete
```

#### **For zsh-syntax-highlighting**:
```bash
# Clone the zsh-syntax-highlighting plugin from GitHub
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /usr/share/zsh-syntax-highlighting
```

### 2. **Verify the Plugin Paths**

After installing the plugins, double-check that the paths specified in your `.zshrc` file match the actual locations where you've cloned the plugins. The lines in your `.zshrc` file should look like this:

```bash
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
```

If you installed the plugins to a different directory, make sure to update the paths accordingly.

### 3. **Restart zsh**

After making these changes, restart your zsh shell or run the following command to apply the changes:

```bash
source ~/.zshrc
```

