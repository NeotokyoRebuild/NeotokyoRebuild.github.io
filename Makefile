SITE_HTTPS_URL := https://neotokyorebuild.github.io/
SITE_TITLE := Neotokyo; Rebuild

SRC_DIR := src
DST_DIR := _out
SRCS := $(shell find $(SRC_DIR) -name '*.md' | grep -vxF "src/index.md")
SRCS_CPY := $(SRC_DIR)/style.css $(SRC_DIR)/favicon.ico

BLOG_LIST_FILE := _metadata/blog_list
BLOG_DATES := _metadata/blog_dates
DSTS_HTML := $(SRCS:$(SRC_DIR)/%.md=$(DST_DIR)/%.html)
DSTS_HTML_CPY := $(SRCS_CPY:$(SRC_DIR)/%=$(DST_DIR)/%)

all: html

startup:
	mkdir -p _out
	mkdir -p _metadata

clean:
	rm -fr $(DST_DIR)
	rm -fr _metadata

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

$(DST_DIR)/index.html: $(SRC_DIR)/blog/*/*.md $(SRC_DIR)/_header.html $(SRC_DIR)/_footer.html
	@echo "html (blog):" $@
	@mv $(BLOG_LIST_FILE) $(BLOG_LIST_FILE).tmp
	@cat $(BLOG_LIST_FILE).tmp | sort -ur > $(BLOG_LIST_FILE)
	@rm $(BLOG_LIST_FILE).tmp
	@m4 -DSSG_TITLE="Home" $(SRC_DIR)/_header.html > $@.header.html.tmp
	@lowdown -Thtml -o $@.tmp < $(SRC_DIR)/index.md
	@echo "<ul>" >> $@.mid
	@cat $(BLOG_LIST_FILE) | while read line; do \
		entry_date=$$(echo "$$line" | cut -f1); \
		title=$$(echo "$$line" | cut -f2); \
		echo "<li><a href=\"/blog/$$entry_date\">$$entry_date - $$title</a></li>"; \
		done >> $@.mid
	@echo "</ul>" >> $@.mid
	@cat $@.header.html.tmp $@.tmp $@.mid $(SRC_DIR)/_footer.html > $@
	@rm $@.tmp $@.header.html.tmp $@.mid

$(DST_DIR)/atom.xml: $(SRC_DIR)/blog/*/*.md
	@echo "html (atom):" $@
	@echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>" > $@
	@echo "<feed xmlns=\"http://www.w3.org/2005/Atom\">" >> $@
	@echo "<title type=\"text\">$(SITE_TITLE)</title>" >> $@
	@echo "<updated>$$(head -n1 "$(BLOG_LIST_FILE)" | cut -f1)T00:00:00Z</updated>" >> $@
	@echo "<id>$(SITE_HTTPS_URL)blog/</id>" >> $@
	@echo "<author><name>$(SITE_TITLE)</name></author>" >> $@
	@echo "<link rel=\"alternate\" type=\"text/html\" href=\"$(SITE_HTTPS_URL)\"/>" >> $@
	@echo "<link rel=\"self\" type=\"application/atom+xml\" href=\"$(SITE_HTTPS_URL)atom.xml\"/>" >> $@
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

news_txt:
	@echo "_out/news.txt"
	@cat $(BLOG_LIST_FILE) | cut -f1 > $(BLOG_DATES)
	@paste $(BLOG_DATES) $(BLOG_LIST_FILE) | sed -e 's/^/\/blog\//' > "$(DST_DIR)/news.txt"

html: startup $(DSTS_HTML) $(DSTS_HTML_CPY) $(DST_DIR)/index.html $(DST_DIR)/atom.xml news_txt

.PHONY: all clean html

