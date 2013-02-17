filename = ARGV[0]
print "Target file = " 
p filename

input = File.open(filename)

line_src     = 0
line_comment = 0
line_blank   = 0
line_total   = 0

re_comment = Regexp.new(Regexp.quote("//"))

while inline = input.gets
  print inline
  line_total += 1
  if inline.size == 1
    line_blank += 1
  elsif re_comment =~ inline
    line_comment += 1
  else
    line_src += 1
  end
end

input.close

printf("\n--------------------------------- \n")
printf("src     = %d \n", line_src)
printf("comment = %d \n", line_comment)
printf("blank   = %d \n", line_blank)
printf("--------------------------------- \n")
printf("total   = %d \n", line_total)
printf("--------------------------------- \n")
