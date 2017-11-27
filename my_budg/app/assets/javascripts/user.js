
class User {

  constructor(data) {
    this.id = data.id;
    this.name = data.name;
    this.zipcode = data.zipcode;
    this.income = data.income;

    User.all.push(this);
  }

}
