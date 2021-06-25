digits = ['1','2','3','4','5','6','7','8','9']
en = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
fr = ['un','deux','trois','quatre','cinq','six','sept','huit','neuf']

def number_formater(digits, lang1, lang1_name, lang2, lang2_name)
full_hash = {}
 digits.each do |digit|
full_hash[digit.to_sym] = [{lang1_name.to_sym=> lang1[digits.index(digit)]}, {lang2_name.to_sym=> lang2[digits.index(digit)]}]
 end

return full_hash
end

# i am not sure if my digits are keys or they are strings
# they print like this :"1" =>
 puts number_formater(digits, en, "English", fr, "french")
