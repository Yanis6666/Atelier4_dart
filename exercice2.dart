class Point {
  double _x;
  double _y;

  Point(this._x, this._y);

  void move(double dx, double dy) {
  _x = _x + dx;
  _y = _y + dy;
  }

  void display() {
  print("Point : ($_x, $_y)");
  }
}

void main() {
  Point p = Point(2.0, 5.0);

  p.display();

  p.move(3.0, 2.0);

  p.display();
}