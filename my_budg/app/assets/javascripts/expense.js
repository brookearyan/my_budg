class Expense {
  constructor(data) {
    this.id = data.id;
    this.name = data.name;
    this.expense_type = data.expense_type;
    this.cost = data.cost;
    this.start_time = data.start_time;
    this.user_id = data.user_id;
    
    Expense.all.push(this);
  }
}
