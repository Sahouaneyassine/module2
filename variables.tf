variable "persons" {
  description = "Please enter the Map list of the persons "
  type        = map(any)


  validation {
    condition = alltrue([
    for person_list in var.persons : length(person_list) == 3])
    error_message = "The lists of the MAP must contains 3 elements (Prenom , Non , Num)"
  }
}
