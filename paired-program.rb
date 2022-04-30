recipes = []
while true
  print "Enter a recipt: "
  input = gets.chomp
  if input.downcase == "done"
    break
  else
    recipes << input
  end
end

languages = []
while true
  print "Enter a language: "
  input = gets.chomp
  if input.downcase == "done"
    break
  else
    languages << input
  end
end

if recipes.length > 10 && languages.length > 5
  puts "They should date."
else
  puts "They should not date."
end
