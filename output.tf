output "list_persons" {
  description = "The value of each person(key)"
  value       = [for person in var.persons : person]
}
