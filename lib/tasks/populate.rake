namespace :db do
  task :populate => :environment do
    Course.destroy_all
    Student.destroy_all
    Grade.destroy_all

    course_names = %w{Ruby Rails JavaScript Python C++ C# MySQL Postgres Hadoop Neo4J HTML5}

    #Create 20 courses
    20.times do
      Course.create(:name => "#{course_names[(rand * course_names.length).floor]}: Level #{(1..3).to_a.sample}")
    end

    #Create 100 students
    100.times do
      Student.create(:first_name => Faker::Name.name, :last_name => Faker::Name.name)
    end
    
    #On each course assign a random set of different numbers of students
    stu_range = (Student.first.id..Student.last.id).to_a
    Course.all.each do |course|
      (1..10).to_a.sample.times do
        course.students << Student.find(stu_range.sample)
      end
    end
  end
end