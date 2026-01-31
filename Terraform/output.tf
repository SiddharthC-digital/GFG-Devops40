# output "public_ip_second_instance"{
#     value = aws_instance.gfgos2.public_ip
# }

output "public_ip_first_instance"{
    value = aws_instance.gfgos[1].public_ip
}