# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


read = Habit.create(name: "read", goal: 5, complete: false)
run = Habit.create(name: "run", goal: 4, complete: false)
read = Habit.create(name: "work out", goal: 5, complete: false, days_complete: 1)
run = Habit.create(name: "drink water", goal: 4, complete: false, days_complete: 3)

mon_task1 = Mon.create(plan: "Study for 2 hours", complete: false)
mon_task2 = Mon.create(plan: "Read for 45 mins.", complete: false)

tues_task1 = Tue.create(plan: "Go running", complete: false)
tues_task2 = Tue.create(plan: "Meal prep", complete: false)

wed_task1 = Wed.create(plan: "Go running", complete: false)
wed_task2 = Wed.create(plan: "Meal prep", complete: false)

thur_task1 = Thur.create(plan: "Go running", complete: false)
thur_task2 = Thur.create(plan: "Meal prep", complete: false)

fri_task1 = Fri.create(plan: "Study", complete: false)
fri_task2 = Fri.create(plan: "Pick up laundry", complete: false)

sat_task1 = Sat.create(plan: "Stuff", complete: false)
sat_task1 = Sat.create(plan: "Go running", complete: false)

sun_task1 = Sun.create(plan: "Get Groceries", complete: false)
sun_task2 = Sun.create(plan: "Meal prep", complete: false)

new_note2 = Note.create(content: "Read for 30 mins ", habit: read)
new_note = Note.create(content: "Went running", habit: run)
