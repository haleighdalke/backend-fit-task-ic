User.destroy_all
Habit.destroy_all
Goal.destroy_all
Accomplishment.destroy_all

User.create(name: 'Darrick Pang', password: '123', age: 30, location: 'California')
Habit.create(activity: 'running', type: 'exercise')
Goal.create(user_id: 1, habit_id: 1, frequency: 'one per day', duration: 2, duration_type: 'miles')
Accomplishment.create(goal_id: 1, date: 'August 13, 2020', duration: 2, duration_type: 'miles')