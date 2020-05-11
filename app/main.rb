require 'csv'
GITHUB_PATH = '../app/files/csv_github'
files=[]

# NAME SHORTENER
# Dir.foreach(GITHUB_PATH) do |filename|
#   files<<"#{filename}"
# end
# 2.times {files.delete_at(0)}
#
# files.each do |f|
#
#   File.rename("#{GITHUB_PATH}/#{f}", "#{GITHUB_PATH}/#{f.gsub( "repos_graphql_","")}")
#
# end

# Taking each file
Dir.foreach(GITHUB_PATH) do |filename|
  files<<"#{filename}"
end

# Deleting . and .. selections from Dir
2.times {files.delete_at(0)}

#Opens each CSV
files.each do |f|
  CSV.foreach("#{GITHUB_PATH}/#{f}", "r", quote_char: nil, col_sep: "\t", row_sep: "\r\r\n") do |row|


  end
end