# Credentials should be store on .awsconfig file or as environment variables
# Once you are authenticated terraform will noticed that

resource "aws_iam_user" "admin-user" {
    name = "alonso"
    tags = { 
        Description = "Technical Team Leader"
    }
}

resource "aws_iam_policy" "adminUser" {
    name = "AdminUsers"
    policy = file("./data_in/admin-policy.json")
  
}

resource "aws_iam_user_policy_attachment" "alonso-admin-access" {
    user = aws_iam_user.admin-user
    policy_arn = aws_iam_policy.adminUser
}