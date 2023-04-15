puts "Destroying tasks..."
Task.destroy_all

puts "Creating tasks..."
Task.create!(title: "Study", details: "Chemistry and Biology", completed: false)
Task.create!(title: "Running", details: "30 minutes slow", completed: false)
Task.create!(title: "Laundry", details: "Wash and air dry", completed: false)
Task.create!(title: "Practice Violin", details: "Focus on scales for 30 minutes", completed: false)

puts "Finished!"
