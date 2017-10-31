resource "aws_db_instance" "wordpress" {
  # worng spaces
  # to much spaces

  allocated_storage = 10
  storage_type = "gp2"
  engine = "mariadb"
  engine_version = "10.0.24"

instance_class = "db.t2.micro"
  identifier = "db-${var.env}"
  name = "wordpress"



  username = "wordpress"
  password = "${var.wordpress_db_pass}"
  db_subnet_group_name = "${aws_db_subnet_group.default.name}"
  vpc_security_group_ids = ["${aws_security_group.RuleWebServerIn.id}"]
  apply_immediately = true
}
