output "list_persons" {
  description = "The values of each person (key) :"
  value       = [for person in var.persons : person]
}
