resource "aws_iam_user" "AllUserList" {
    name = var.AllUserList[count.index]
    count = length(var.AllUserList)
    path = "/system/"
  
}