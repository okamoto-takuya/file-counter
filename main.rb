filename = ARGV[0]
print "Target file = " 
p filename

input = File.open(filename)

line_src     = 0
line_comment = 0
line_blank   = 0

while inline = input.gets
  p inline
  line_src += 1
end

input.close

print "----------------------------- \n"
print "src     = ", line_src, "\n"
print "comment = ", line_comment, "\n"
print "blank   = ", line_blank, "\n"
