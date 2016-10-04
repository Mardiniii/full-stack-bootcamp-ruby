# Create an array of hashes with the information from a txt file (makers.txt)

filename = 'makers.txt'
txt = open(filename)

students = []

txt.each_line do |line|
  student = line.split(',')
  name = student[0]
  age = student[1].to_i
  profession = student[2]
  height = student[3].to_f

  student_hash = { name: name, age: age, profession: profession, height: height }

  students.push(student_hash)
end

print students