variable "persons" {
  description = "Please enter the Map list of the persons "
  type        = map(any)


  validation {
    condition = alltrue([
    for person_list in var.persons : length(person_list) == 3])
    error_message = "The lists of the MAP must contains 3 elements (Prenom , Nom , Phone number)"
  }


  validation {
    condition = alltrue([
    for person_list in var.persons : can(regex("^[0-9]+$", element(person_list, 2)))])
    error_message = "The 3 element of every map list Must be a phone number (Ex:0656987..) !"
  }


}
    
    
variable "tagss" {
  description = "Please enter the Map list of the persons "
  type        = list(any)
    

}
