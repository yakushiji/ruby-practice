$nestingDepth = 0

def log descriptionOfBlock, &block
  indent = "  " * $nestingDepth
  $nestingDepth += 1
  puts "#{indent}開始 \"#{descriptionOfBlock}\"..."
  result = block.call
  puts "#{indent}...\"#{descriptionOfBlock}\" 終了, 返り値は: #{result}"
  $nestingDepth -= 1
  result
end

log '外ブロック' do
  log 'ある小さなブロック' do
    log 'ちっちゃなブロック' do
      'lots of love'
    end
    42
  end
  log 'もうひとつのブロック' do
    'I like Indian food!'
  end
  true
end
