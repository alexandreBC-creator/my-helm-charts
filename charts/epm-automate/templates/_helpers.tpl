# templates/_helpers.tpl
{{- define "epm-automate.fullname" -}}
{{- include "epm-automate.name" . }}-{{ .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "epm-automate.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end }}
