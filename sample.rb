
while true
  puts "Sélectionnez le processus que vous souhaitez mettre en œuvre"
  puts "1:Saisir les points d'évaluation et les commentaires"
  puts "2:Vérifiez les résultats jusqu'à présent."
  puts "3:quitter"
  num = gets.to_i

  case num
  when 1
    puts "Veuillez indiquer une note sur une échelle de 1 à 5."
    point = gets.to_i
    while true
      if point <= 0 || point > 5
        puts "1Veuillez indiquer sur une échelle de 1 à 5"
        point = gets.to_i
      else
        puts "Merci de saisir un commentaire"
        comment = gets
        post = "point：#{point}commentaire：#{comment}"
        File.open("data.txt", "a") do |file|
          file.puts(post)
        end
        break
      end
    end
  when 2
    puts "fin"
    File.open("data.txt", "r") do |file|
      file.each_line do |line|
        puts line
      end
    end
  when 3
    puts "Finir"
    break
  else
    puts "Veuillez entrer 1 à 3"
  end
end