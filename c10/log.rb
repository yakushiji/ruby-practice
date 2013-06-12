def log descriptionOfBlock, &block
  puts "開始 \"#{descriptionOfBlock}\"..."
  result = block.call
  puts "...\"#{descriptionOfBlock}\" 終了, 返り値は: #{result}"
  result
end

log '外ブロック' do
  log 'ある小さなブロック' do
    5
  end
  log 'もうひとつのブロック' do
    'I like Thai food!'
  end
  false
end
