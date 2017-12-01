#
# dot 및 svg 자동생성 
#

#
# pattern rules
#

#
# 1. sed, template.dot -> dot
%.dot:%-style.sed %-template.dot
	@echo "//" > $@
	@echo "// Generated automatically $$(date +'%Y-%m-%d %H:%M:%S')" >> $@
	@echo "// sed -f $^" >> $@
	@echo "//" >> $@
	@echo "(g)sed -E -f $^ >> $@"
	@sed -E -f $^ >> $@

#
# 2. dot -> svg
%.svg:%.dot
	dot -Kdot -Tsvg $^ -o $@

#
# 3. open with web browser
open-%:%.svg
	@# OS X인 경우에만 실행
	@if [ "$$(uname)" = "Darwin" ];then open -a safari.app $^;fi

.PHONY:all

# Stop make 'Removing intermediate files...'
.SECONDARY:

all:open-swift

open-swift:swift.svg

#
# dependency lists
#

clean:
	rm -f swift.dot swift.svg
