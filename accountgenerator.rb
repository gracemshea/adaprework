# first three arrays
student_names = []
student_IDs = []
student_emails = []
# overall array
student_accounts = []

# define number of students and email domain
num_students = 5
domain = "ada.edu"

# create accountGenerator loop
def accountGenerator(num_students, domain)
  student_accounts = []
  num_students.times do
    print "Please enter the first and last name:"
    full_name = gets.chomp.upcase
    rand_ID = rand(111111..999999)

    # avoid duplicate id numbers
    exists = true
    while exists
      exists = false
      student_accounts.each do |student|
        if student["id"] == rand_ID
          exists = true
        end
      end
    # if there id already exists, populate new random id
      if exists
        rand_ID = rand(111111..999999)
      end
    end

    # split name to create email account
    name_split = full_name.split(" ")

    first_initial = name_split[0][0]
    if (name_split.length == 2)
      middle_name = ""
      last_name = name_split[1]
    else
      middle_name = name_split[1][0]
      last_name = name_split[2]
    end

    email_name = first_initial + middle_name + last_name

    # make sure last 3 digits of the id number are converted to string
    three_digit_ID = rand_ID.to_s[-3..-1]

    email = email_name + three_digit_ID + "@" + domain

    student_accounts.push({
        "name" => full_name,
        "id" => rand_ID,
        "email" => email
    })
  end

  return student_accounts
end

# output
def print_students(students)
  students.each do |student|
    puts student["name"] + " " + student["id"].to_s + " " + student["email"]
  end
end

students = accountGenerator(num_students, domain)
print_students(students)
