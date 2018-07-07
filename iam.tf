resource "aws_iam_user" "s3_user" {
  name = "test"
}

resource "aws_iam_access_key" "s3_user" {
  user = "${aws_iam_user.test.name}"
}

resource "aws_iam_user_policy" "s3_policy" {
  name = "test"
  user = "${aws_iam_user.test.name}"
}
