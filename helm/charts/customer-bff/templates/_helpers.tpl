{{- define "customer-bff.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "customer-bff.labels" -}}
app.kubernetes.io/name: customer-bff
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: gridforge
gridforge.io/domain: platform
{{- end -}}

{{- define "customer-bff.selectorLabels" -}}
app.kubernetes.io/name: customer-bff
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
