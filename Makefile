DOT_FILES := .gitconfig .zshrc .zsh.d .vimrc .vim.d .screenrc .screen.d .emacs.d \
			 .w3m .mutt .muttrc .newsbeuter .shelf .tmux.conf .taskrc .bin .zshenv \
			 .folders

all: install

install: $(foreach f, $(DOT_FILES), link-dot-file-$(f))

zsh: $(foreach f, $(filter .zsh%, $(DOT_FILES)), link-dot-file-$(f))

vim: $(foreach f, $(filter .vim%, $(DOT_FILES)), link-dot-file-$(f))

emacs: $(foreach f, $(filter .emacs%, $(DOT_FILES)), link-dot-file-$(f))

git: $(foreach f, $(filter .git%, $(DOT_FILES)), link-dot-file-$(f))

.PHONY: clean
clean: $(foreach f, $(DOT_FILES), unlink-dot-file-$(f))

link-dot-file-%: %
	@echo "Create Symlink $< => $(HOME)/$<"
	@ln -snf $(CURDIR)/$< $(HOME)/$<

unlink-dot-file-%: %
	@echo "Remove Symlink $(HOME)/$<"
	@$(RM) $(HOME)/$<

