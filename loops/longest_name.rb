names = ['Sheng', 'Kevin', 'Audrey', 'KJ', 'Delilah', 'Josh', 'Mack', 'Rey']
longest_name = ''

for name in names do
    if name.length > longest_name.length
        longest_name = name
    end    
end

p longest_name