# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


read = Habit.create(name: "read", goal: 5, complete: false)
run = Habit.create(name: "run", goal: 4, complete: false)

mon_task1 = Mon.create(plan: "Study for 2 hours", complete: false)
mon_task2 = Mon.create(plan: "Read for 45 mins.", complete: false)

tues_task1 = Tue.create(plan: "Go running", complete: false)
tues_task2 = Tue.create(plan: "Meal prep", complete: false)

new_note2 = Note.create(content: "Read for 30 mins ", habit: read)
new_note = Note.create(content: "Went running", habit: run)
