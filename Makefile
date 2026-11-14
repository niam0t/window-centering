UUID = window-centering@niam0t
INSTALL_DIR = $(HOME)/.local/share/gnome-shell/extensions/$(UUID)

.PHONY: install uninstall clean

install:
	glib-compile-schemas schemas
	mkdir -p "$(INSTALL_DIR)"
	cp -r metadata.json extension.js prefs.js schemas lib "$(INSTALL_DIR)/"

uninstall:
	rm -rf "$(INSTALL_DIR)"

clean:
	rm -f schemas/gschemas.compiled
