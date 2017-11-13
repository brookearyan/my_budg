# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:



u1 = User.create({name: "Will Smith", email: "will@smith.com", password: "bigwillystyle", income: 200000, zipcode: 10016,
                             password_confirmation: "bigwillystyle"})

e1 = Expense.create({name: "gas", cost: 50, expense_type: "transportation", start_time: "1/1/18", user_id: 1})

b1 = Bill.create({company: "Comcast", cost: 125, bill_type: "utilities", start_time: "1/1/18", user_id: 1})

m1 = Month.create({name: "January", user_id: 1})

e0 = Expense.create({name: "dinner", cost: 100, expense_type: "restaurants/takeout", start_time: "1/1/18", user_id: 1})
e2 = Expense.delete({name: "work lunch", cost: 50, expense_type: "restaurants/takeout", start_time: "1/1/18", user_id: 1})
e3 = Expense.create({name: "movies", cost: 50, expense_type: "entertainment", start_time: "1/1/18", user_id: 1})
e4 = Expense.create({name: "prom dress", cost: 300, expense_type: "clothing", start_time: "1/1/18", user_id: 1})
e5 = Expense.create({name: "metrocard", cost: 125, expense_type: "transportation", start_time: "1/1/18", user_id: 1})
e6 = Expense.create({name: "babysitter", cost: 50, expense_type: "childcare", start_time: "1/1/18", user_id: 1})
e7 = Expense.create({name: "gas", cost: 50, expense_type: "transportation", start_time: "1/1/18", user_id: 1})

b2 = Bill.create({company: "Bank", cost: 1000, bill_type: "mortage/rent", start_time: "1/1/18", user_id: 1})
b3 = Bill.create({company: "att", cost: 125, bill_type: "mobile phone", start_time: "1/1/18", user_id: 1})
b4 = Bill.create({company: "Nelnet", cost: 300, bill_type: "loans", start_time: "1/1/18", user_id: 1})
b5 = Bill.create({company: "Amex", cost: 500, bill_type: "credit cards", start_time: "1/1/18", user_id: 1})
b1 = Bill.create({company: "Comcast", cost: 125, bill_type: "utilities", start_time: "1/1/18", user_id: 1})
