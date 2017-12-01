#
# NOTICE: Use Extended RE
# sed -E (sed -r)
#
# graphviz의 반복적인 내용을 sed를 이용해서 대체한다.
# \{\{...\}\}로 된 부분을 대체해 준다.
#
# 1. \{\{...\}\} 를 대체한다.
# ex)
# $ sed -f swift-style.sed swift-template.dot > swift.dot
#
# 2. graphviz 파일을 SVG 형식으로 만든다.
# $ dot -Tsvg system.dot system.svg
#
# 3. 맥에서는 바로 safari로 열어볼 수 있다.
# $ open -a safari.app system.svg

# node
s/\{\{NODE ATTR\}\}/[fontsize="10"]/

s/\{\{STRUCTURE\}\}/[shape=rectangle style="rounded" fillcolor=white color=blue penwidth=3]/
s/\{\{PROTOCOL\}\}/[shape=rectangle style="rounded,dashed" fillcolor=white color=red penwidth=1]/

# graph
s/\{\{GRAPH ATTR\}\}/[style="filled,dotted" fillcolor="yellow" color=black penwidth=2]/

# color
s/\{\{COLOR1\}\}/[color=red penwidth=2]/
s/\{\{COLOR2\}\}/[color=orange penwidth=2]/
s/\{\{COLOR3\}\}/[color=green penwidth=2]/
s/\{\{COLOR4\}\}/[color=blue penwidth=2]/
s/\{\{COLOR5\}\}/[color=purple penwidth=2]/
s/\{\{COLOR6\}\}/[color=cyan penwidth=2]/
