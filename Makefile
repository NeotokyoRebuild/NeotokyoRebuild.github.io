SITE_HTTPS_URL := https://neotokyorebuild.github.io/
SITE_TITLE := Neotokyo; Rebuild

SRC_DIR := src
DST_DIR := _out
SRCS := $(shell find $(SRC_DIR) -name '*.md')
SRCS_CPY := $(SRC_DIR)/style.css

BLOG_LIST_FILE := $(DST_DIR)/blog_list
DSTS_HTML := $(SRCS:$(SRC_DIR)/%.md=$(DST_DIR)/%.html)
DSTS_HTML_CPY := $(SRCS_CPY:$(SRC_DIR)/%=$(DST_DIR)/%)

all: html

clean:
	rm -fr $(DST_DIR)

serve:
	python3 -m http.server -d $(DST_DIR)

$(DST_DIR)/%.html: $(SRC_DIR)/%.md $(SRC_DIR)/_header.html $(SRC_DIR)/_footer.html
	@echo html: $@
	@mkdir -p $(dir $@)
	@SSG_TITLE=$$(lowdown -X title $<); \
		m4 -DSSG_TITLE="$$SSG_TITLE" $(SRC_DIR)/_header.html > $@.header.html.tmp
	@lowdown -Thtml -o $@.tmp $< 
	@cat $@.header.html.tmp $@.tmp $(SRC_DIR)/_footer.html > $@
	@rm $@.tmp $@.header.html.tmp
	@case $< in $(SRC_DIR)/blog/*) \
		entry_date=$$(dir $< | cut -d'/' -f3); \
		echo "$$entry_date	$$(lowdown -X title $<)" >> $(BLOG_LIST_FILE);; \
		esac

$(DST_DIR)/%: $(SRC_DIR)/%
	@echo "html (copy):" $@
	@mkdir -p $(dir $@)
	@cp $< $@

$(DST_DIR)/blog/index.html: $(SRC_DIR)/blog/*/*.md $(SRC_DIR)/_header.html $(SRC_DIR)/_footer.html
	@echo "html (blog):" $@
	@echo "<h1>Blog</h1><ul>" > $@.mid
	@mv $(BLOG_LIST_FILE) $(BLOG_LIST_FILE).tmp
	@cat $(BLOG_LIST_FILE).tmp | sort -ur > $(BLOG_LIST_FILE)
	@rm $(BLOG_LIST_FILE).tmp
	@cat $(BLOG_LIST_FILE) | while read line; do \
		entry_date=$$(echo "$$line" | cut -f1); \
		title=$$(echo "$$line" | cut -f2); \
		echo "<li><a href=\"$$entry_date\">$$entry_date - $$title</a></li>"; \
		done >> $@.mid
	@echo "</ul>" >> $@.mid
	@m4 -DSSG_TITLE="Blog" $(SRC_DIR)/_header.html > $@.header
	@cat $@.header $@.mid $(SRC_DIR)/_footer.html > $@
	@rm $@.header $@.mid

$(DST_DIR)/blog/atom.xml: $(SRC_DIR)/blog/*/*.md
	@echo "html (atom):" $@
	@echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>" > $@
	@echo "<feed xmlns=\"http://www.w3.org/2005/Atom\">" >> $@
	@echo "<title type=\"text\">$(SITE_TITLE)</title>" >> $@
	@echo "<updated>$$(head -n1 "$(BLOG_LIST_FILE)" | cut -f1)T00:00:00Z</updated>" >> $@
	@echo "<id>$(SITE_HTTPS_URL)blog/</id>" >> $@
	@echo "<author><name>$(SITE_TITLE)</name></author>" >> $@
	@echo "<link rel=\"alternate\" type=\"text/html\" href=\"$(SITE_HTTPS_URL)blog/\"/>" >> $@
	@echo "<link rel=\"self\" type=\"application/atom+xml\" href=\"$(SITE_HTTPS_URL)blog/atom.xml\"/>" >> $@
	@cat $(BLOG_LIST_FILE) | while read line; do \
		entry_date=$$(echo "$$line" | cut -f1); \
		title=$$(echo "$$line" | cut -f2); \
		entry_url=$$(echo "$(SITE_HTTPS_URL)blog/$$entry_date/"); \
		echo "<entry>"; \
		echo "<title>$$title</title>"; \
		echo "<link rel=\"alternate\" type=\"text/html\" href=\"$$entry_url\"/>"; \
		echo "<updated>$${entry_date}T00:00:00Z</updated>"; \
		echo "<published>$${entry_date}T00:00:00Z</published>"; \
		echo "<summary>$$(lowdown -X summary $(SRC_DIR)/blog/$${entry_date}/index.md)</summary>"; \
		echo "<id>$$entry_url</id>"; \
		echo "</entry>"; \
		done >> $@
	@echo "</feed>" >> $@

html: $(DSTS_HTML) $(DSTS_HTML_CPY) #$(DST_DIR)/blog/index.html $(DST_DIR)/blog/atom.xml

.PHONY: all clean html

