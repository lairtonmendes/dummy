require 'date'

DATE_START = Date.new(2023, 1, 1)
DATE_END = Date.new(2023, 8, 31)

(DATE_START..DATE_END).each do |date|
  next if rand <= 0.3

  r = rand(5)
  (0..r).each do |i|
    date_time = "#{date}T#{10 + i}:#{'%02d' % rand(60)}:#{'%02d' % rand(60)}"
    `echo #{date_time} >> file.txt`
    `git add file.txt`
    `git commit --date="#{date_time}" -m "commit #{date_time}"`
  end
end
