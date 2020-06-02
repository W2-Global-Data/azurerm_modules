variable "name" {
  description = "The name of the WAF policy"
  default = ""
}

variable "resource_group_name" {
  description = "The resource group the WAF policy will exist in"
  default = ""
}

variable "enabled" {
  description = "The state of the WAF policy"
  default = "true"
}

variable "mode" {
  description = "The mode the WAF policy is in. Options are Prevention or Detection"
  default = "Prevention"
}

variable "redirect_url" {
  description = "If the action type of a rule in the WAF is to redirect traffic, this is the destination URL"
  default = ""
}

variable "custom_block_response_status_code" {
  description = "If a rule action is Block, this is the response status code. Options are 200, 403, 405, 406 or 429"
  default = "403"
  type = string
}

variable "custom_block_response_body" {
  description = "If a rule action is Block, this is the response body. Must be base64 encoded."
  default = ""
}