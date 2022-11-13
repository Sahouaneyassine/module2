# Terraform `module2` module
## Why?

This module will help us get the values of each key of our Map (List) which will contains the list of details of a person  .

## Arguments

- `persons`                 - (Map(List)) the Map list of the details of each person (Prenom,Nom,PhoneNum) .


## Outputs

- `list_persons`           - (List) Contains the value (List) of each person .


## Example

```hcl-terraform
module "module22" {
  source             = "git@github.com:Sahouaneyassine/module2.git"
  persons = tomap({
  a = ["yassine","sahouane","0654587"]
  c = ["yassine","sahouane","0654587"]
})
}
  
```
