

output "short" {
  
  value = [ for c in jsondecode(data.http.ipranges.body).items: c.cidr if c.mask_len < 33 ]
  

  
  
}
