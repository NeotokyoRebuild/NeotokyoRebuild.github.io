SITE_HTTPS_URL := https://neotokyorebuild.github.io/
SITE_TITLE := NEOTOKYO;REBUILD

SRC_DIR := src
DST_DIR := _out
SRCS := $(shell find $(SRC_DIR) -name '*.md' | grep -vxF "src/index.md")
SRCS_CPY := $(SRC_DIR)/style.css $(SRC_DIR)/favicon.ico $(shell find $(SRC_DIR) -name '*.png')

BLOG_LIST_FILE := _metadata/blog_list
BLOG_DATES := _metadata/blog_dates
DSTS_HTML := $(SRCS:$(SRC_DIR)/%.md=$(DST_DIR)/%.html)
DSTS_HTML_CPY := $(SRCS_CPY:$(SRC_DIR)/%=$(DST_DIR)/%)

GH_RELEASE_URL := https://api.github.com/repos/NeotokyoRebuild/neo/releases/latest
GH_RELEASE_JSON := _metadata/gh_latest.json
GH_RELEASE_HTML := _metadata/gh_latest.html

FEEDS_LIMIT := 5

all: html

startup:
	mkdir -p _out
	mkdir -p _metadata

clean:
	rm -fr $(DST_DIR)
	rm -fr _metadata

serve:
	python3 -m http.server -d $(DST_DIR)

fetch_release: startup
	@if [ ! -f $(GH_RELEASE_JSON) ]; then \
		curl -Lo $(GH_RELEASE_JSON) $(GH_RELEASE_URL); \
		fi
	@echo html: $(GH_RELEASE_HTML)
	@echo "<p>" > $(GH_RELEASE_HTML)
	@printf "Current release: %s<br>\n" "$$(jq -r .tag_name < $(GH_RELEASE_JSON))" >> $(GH_RELEASE_HTML)
	@printf "Published on: %s\n" "$$(jq -r .published_at < $(GH_RELEASE_JSON) | cut -d'T' -f1)" >> $(GH_RELEASE_HTML)
	@echo "</p><p>" >> $(GH_RELEASE_HTML)
	@{ 	printf "Linux-only binaries\tlibraries-Linux-Release\n"; \
		printf "Windows-only binaries\tlibraries-Windows-Release\n"; \
		printf "Windows and Linux resources\tresources\n"; \
	} | while read line; do \
		json_filter="$$(echo "$$line" | cut -f2)"; \
		printf "%s: <a href=\"%s\">%s</a><br>\n" \
			"$$(echo "$$line" | cut -f1)" \
			"$$(jq -r '.assets[] | select(.name | contains("'"$$json_filter"'")) | .browser_download_url' < $(GH_RELEASE_JSON))" \
			"$$(jq -r '.assets[] | select(.name | contains("'"$$json_filter"'")) | .name' < $(GH_RELEASE_JSON))" \
			>> $(GH_RELEASE_HTML); \
		done
	@echo "</p>" >> $(GH_RELEASE_HTML)

$(DST_DIR)/%.html: $(SRC_DIR)/%.md $(SRC_DIR)/_header.html $(SRC_DIR)/_footer.html
	@echo html: $@
	@mkdir -p $(dir $@)
	@SSG_TITLE=$$(lowdown -X title $<); \
		m4 -DSSG_TITLE="$$SSG_TITLE" $(SRC_DIR)/_header.html > $@.header.html.tmp
	@sed -e '/GH_LATEST_HTML/e cat $(GH_RELEASE_HTML)' -e 's/GH_LATEST_HTML//g' $< | \
		lowdown -Thtml --html-no-skiphtml --html-no-escapehtml -o $@.tmp -
	@cat $@.header.html.tmp $@.tmp $(SRC_DIR)/_footer.html > $@
	@rm $@.tmp $@.header.html.tmp
	@case $< in $(SRC_DIR)/blog/*) \
		entry_date=$$(dir $< | cut -d'/' -f3); \
		echo "$$entry_date	$$(lowdown -X title $<)" >> $(BLOG_LIST_FILE);; \
		esac

$(DST_DIR)/%.png: $(SRC_DIR)/%.png
	@echo "html (copy)" $@
	@mkdir -p $(dir $@)
	@cp $< $@
	@convert $@ -resize 200x200 $@_thumb.png
	@echo "html (thumb)" $@_thumb.png

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
	@sed -e '/GH_LATEST_HTML/e cat $(GH_RELEASE_HTML)' -e 's/GH_LATEST_HTML//g' $(SRC_DIR)/index.md | \
		lowdown -Thtml --html-no-skiphtml --html-no-escapehtml -o $@.tmp -
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
	@cat $(BLOG_LIST_FILE) | head -n$(FEEDS_LIMIT) | while read line; do \
		entry_date=$$(echo "$$line" | cut -f1); \
		title=$$(echo "$$line" | cut -f2); \
		entry_url=$$(echo "$(SITE_HTTPS_URL)blog/$$entry_date/"); \
		echo "<entry>"; \
		echo "<title>$$title</title>"; \
		echo "<link rel=\"alternate\" type=\"text/html\" href=\"$$entry_url\"/>"; \
		echo "<updated>$${entry_date}T00:00:00Z</updated>"; \
		echo "<published>$${entry_date}T00:00:00Z</published>"; \
		echo "<summary>$$(lowdown -X summary $(SRC_DIR)/blog/$${entry_date}/index.md)</summary>"; \
		echo "<content type=\"html\">"; \
		lowdown -Thtml "$(SRC_DIR)/blog/$${entry_date}/index.md" | sed "s/</\&lt;/g" | sed "s/>/\&gt;/g"; \
		echo "</content>"; \
		echo "<id>$$entry_url</id>"; \
		echo "</entry>"; \
		done >> $@
	@echo "</feed>" >> $@

news_txt:
	@echo "_out/news.txt"
	@cat $(BLOG_LIST_FILE) | cut -f1 > $(BLOG_DATES)
	@paste $(BLOG_DATES) $(BLOG_LIST_FILE) | sed -e 's/^/\/blog\//' | head -n$(FEEDS_LIMIT) > "$(DST_DIR)/news.txt"

html: fetch_release $(DSTS_HTML) $(DSTS_HTML_CPY) $(DST_DIR)/index.html $(DST_DIR)/atom.xml news_txt

.PHONY: all clean html

