# count detector

variable "count_notifications" {
  description = "Notification recipients list per severity overridden for count detector"
  type        = map(list(string))
  default     = {}
}

variable "count_aggregation_function" {
  description = "Aggregation function and group by for count detector (i.e. \".mean(by=['host'])\")"
  type        = string
  default     = ".count(by=['subscription_id'])"
}

variable "count_transformation_function" {
  description = "Transformation function for count detector (i.e. \".mean(over='5m')\")"
  type        = string
  default     = ".min(over='1d')"
}

variable "count_tip" {
  description = "Suggested first course of action or any note useful for incident handling"
  type        = string
  default     = ""
}

variable "count_runbook_url" {
  description = "URL like SignalFx dashboard or wiki page which can help to troubleshoot the incident cause"
  type        = string
  default     = ""
}

variable "count_disabled" {
  description = "Disable all alerting rules for count detector"
  type        = bool
  default     = null
}

variable "count_disabled_critical" {
  description = "Disable critical alerting rule for count detector"
  type        = bool
  default     = null
}

variable "count_disabled_major" {
  description = "Disable major alerting rule for count detector"
  type        = bool
  default     = null
}

variable "count_threshold_critical" {
  description = "Critical threshold for count detector"
  type        = number
  default     = 245
}

variable "count_threshold_major" {
  description = "Major threshold for count detector"
  type        = number
  default     = 240
}

# capacity detector

variable "capacity_notifications" {
  description = "Notification recipients list per severity overridden for capacity detector"
  type        = map(list(string))
  default     = {}
}

variable "capacity_aggregation_function" {
  description = "Aggregation function and group by for capacity detector (i.e. \".mean(by=['host'])\")"
  type        = string
  default     = ".fill(None, duration='1d').sum(by=['azure_resource_name', 'azure_resource_group_name', 'azure_region'])"
}

variable "capacity_transformation_function" {
  description = "Transformation function for capacity detector (i.e. \".mean(over='5m')\")"
  type        = string
  default     = ".min(over='1d')"
}

variable "capacity_tip" {
  description = "Suggested first course of action or any note useful for incident handling"
  type        = string
  default     = ""
}

variable "capacity_runbook_url" {
  description = "URL like SignalFx dashboard or wiki page which can help to troubleshoot the incident cause"
  type        = string
  default     = ""
}

variable "capacity_disabled" {
  description = "Disable all alerting rules for capacity detector"
  type        = bool
  default     = null
}

variable "capacity_disabled_critical" {
  description = "Disable critical alerting rule for capacity detector"
  type        = bool
  default     = null
}

variable "capacity_disabled_major" {
  description = "Disable major alerting rule for capacity detector"
  type        = bool
  default     = null
}

variable "capacity_threshold_critical" {
  description = "Critical threshold for capacity detector in PiB"
  type        = number
  default     = 4.8
}

variable "capacity_threshold_major" {
  description = "Major threshold for capacity detector in PiB"
  type        = number
  default     = 4.5
}

# ingress detector

variable "ingress_notifications" {
  description = "Notification recipients list per severity overridden for ingress detector"
  type        = map(list(string))
  default     = {}
}

variable "ingress_aggregation_function" {
  description = "Aggregation function and group by for ingress detector (i.e. \".mean(by=['host'])\")"
  type        = string
  default     = ".sum(by=['azure_resource_name', 'azure_resource_group_name', 'azure_region'])"
}

variable "ingress_transformation_function" {
  description = "Transformation function for ingress detector (i.e. \".mean(over='5m')\")"
  type        = string
  default     = ".min(over='15m')"
}

variable "ingress_tip" {
  description = "Suggested first course of action or any note useful for incident handling"
  type        = string
  default     = ""
}

variable "ingress_runbook_url" {
  description = "URL like SignalFx dashboard or wiki page which can help to troubleshoot the incident cause"
  type        = string
  default     = ""
}

variable "ingress_disabled" {
  description = "Disable all alerting rules for ingress detector"
  type        = bool
  default     = null
}

variable "ingress_disabled_critical" {
  description = "Disable critical alerting rule for ingress detector"
  type        = bool
  default     = null
}

variable "ingress_disabled_major" {
  description = "Disable major alerting rule for ingress detector"
  type        = bool
  default     = null
}

variable "ingress_threshold_critical" {
  description = "Critical threshold for ingress detector in Gbps"
  type        = number
  default     = 9
}

variable "ingress_threshold_major" {
  description = "Major threshold for ingress detector in Gbps"
  type        = number
  default     = 8
}

# egress detector

variable "egress_notifications" {
  description = "Notification recipients list per severity overridden for egress detector"
  type        = map(list(string))
  default     = {}
}

variable "egress_aggregation_function" {
  description = "Aggregation function and group by for egress detector (i.e. \".mean(by=['host'])\")"
  type        = string
  default     = ".sum(by=['azure_resource_name', 'azure_resource_group_name', 'azure_region'])"
}

variable "egress_transformation_function" {
  description = "Transformation function for egress detector (i.e. \".mean(over='5m')\")"
  type        = string
  default     = ".min(over='15m')"
}

variable "egress_tip" {
  description = "Suggested first course of action or any note useful for incident handling"
  type        = string
  default     = ""
}

variable "egress_runbook_url" {
  description = "URL like SignalFx dashboard or wiki page which can help to troubleshoot the incident cause"
  type        = string
  default     = ""
}

variable "egress_disabled" {
  description = "Disable all alerting rules for egress detector"
  type        = bool
  default     = null
}

variable "egress_disabled_critical" {
  description = "Disable critical alerting rule for egress detector"
  type        = bool
  default     = null
}

variable "egress_disabled_major" {
  description = "Disable major alerting rule for egress detector"
  type        = bool
  default     = null
}

variable "egress_threshold_critical" {
  description = "Critical threshold for egress detector in Gbps"
  type        = number
  default     = 48
}

variable "egress_threshold_major" {
  description = "Major threshold for egress detector in Gbps"
  type        = number
  default     = 45
}

# requests_rate_status detector

variable "requests_rate_status_notifications" {
  description = "Notification recipients list per severity overridden for requests_rate_status detector"
  type        = map(list(string))
  default     = {}
}

variable "requests_rate_status_aggregation_function" {
  description = "Aggregation function and group by for requests_rate_status detector (i.e. \".mean(by=['host'])\")"
  type        = string
  default     = ".sum(by=['azure_resource_name', 'azure_resource_group_name', 'azure_region'])"
}

variable "requests_rate_status_transformation_function" {
  description = "Transformation function for requests_rate_status detector (i.e. \".mean(over='5m')\")"
  type        = string
  default     = ".min(over='5m')"
}

variable "requests_rate_status_tip" {
  description = "Suggested first course of action or any note useful for incident handling"
  type        = string
  default     = ""
}

variable "requests_rate_status_runbook_url" {
  description = "URL like SignalFx dashboard or wiki page which can help to troubleshoot the incident cause"
  type        = string
  default     = ""
}

variable "requests_rate_status_disabled" {
  description = "Disable all alerting rules for requests_rate_status detector"
  type        = bool
  default     = null
}

variable "requests_rate_status_disabled_critical" {
  description = "Disable critical alerting rule for requests_rate_status detector"
  type        = bool
  default     = null
}

variable "requests_rate_status_disabled_major" {
  description = "Disable major alerting rule for requests_rate_status detector"
  type        = bool
  default     = null
}

variable "requests_rate_status_threshold_critical" {
  description = "Critical threshold for requests_rate_status detector"
  type        = number
  default     = 90
}

variable "requests_rate_status_threshold_major" {
  description = "Major threshold for requests_rate_status detector"
  type        = number
  default     = 80
}


# requests_rate detector

variable "requests_rate_notifications" {
  description = "Notification recipients list per severity overridden for requests_rate detector"
  type        = map(list(string))
  default     = {}
}

variable "requests_rate_aggregation_function" {
  description = "Aggregation function and group by for requests_rate detector (i.e. \".mean(by=['host'])\")"
  type        = string
  default     = ".sum(by=['azure_resource_name', 'azure_resource_group_name', 'azure_region'])"
}

variable "requests_rate_transformation_function" {
  description = "Transformation function for requests_rate detector (i.e. \".mean(over='5m')\")"
  type        = string
  default     = ".min(over='15m')"
}

variable "requests_rate_tip" {
  description = "Suggested first course of action or any note useful for incident handling"
  type        = string
  default     = ""
}

variable "requests_rate_runbook_url" {
  description = "URL like SignalFx dashboard or wiki page which can help to troubleshoot the incident cause"
  type        = string
  default     = ""
}

variable "requests_rate_disabled" {
  description = "Disable all alerting rules for requests_rate detector"
  type        = bool
  default     = null
}

variable "requests_rate_disabled_critical" {
  description = "Disable critical alerting rule for requests_rate detector"
  type        = bool
  default     = null
}

variable "requests_rate_disabled_major" {
  description = "Disable major alerting rule for requests_rate detector"
  type        = bool
  default     = null
}

variable "requests_rate_threshold_critical" {
  description = "Critical threshold for requests_rate detector"
  type        = number
  default     = 19000
}

variable "requests_rate_threshold_major" {
  description = "Major threshold for requests_rate detector"
  type        = number
  default     = 18000
}


# latency_e2e detector

variable "latency_e2e_notifications" {
  description = "Notification recipients list per severity overridden for latency_e2e detector"
  type        = map(list(string))
  default     = {}
}

variable "latency_e2e_aggregation_function" {
  description = "Aggregation function and group by for latency_e2e detector (i.e. \".mean(by=['host'])\")"
  type        = string
  default     = ".sum(by=['azure_resource_name', 'azure_resource_group_name', 'azure_region'])"
}

variable "latency_e2e_transformation_function" {
  description = "Transformation function for latency_e2e detector (i.e. \".mean(over='5m')\")"
  type        = string
  default     = ".min(over='5m')"
}

variable "latency_e2e_tip" {
  description = "Suggested first course of action or any note useful for incident handling"
  type        = string
  default     = ""
}

variable "latency_e2e_runbook_url" {
  description = "URL like SignalFx dashboard or wiki page which can help to troubleshoot the incident cause"
  type        = string
  default     = ""
}

variable "latency_e2e_disabled" {
  description = "Disable all alerting rules for latency_e2e detector"
  type        = bool
  default     = null
}

variable "latency_e2e_disabled_critical" {
  description = "Disable critical alerting rule for latency_e2e detector"
  type        = bool
  default     = null
}

variable "latency_e2e_disabled_major" {
  description = "Disable major alerting rule for latency_e2e detector"
  type        = bool
  default     = null
}

variable "latency_e2e_threshold_critical" {
  description = "Critical threshold for latency_e2e detector"
  type        = number
  default     = 0.1
}

variable "latency_e2e_threshold_major" {
description = "Major threshold for latency_e2e detector"
type        = number
default     = 0.05
}