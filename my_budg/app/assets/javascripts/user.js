
class User {

  constructor(data) {
    this.id = data.id;
    this.name = data.name;
    this.zipcode = data.zipcode;
    this.income = data.income;
    this.expenses = [];
    this.bills = [];

    User.all.push(this);
  }

}
