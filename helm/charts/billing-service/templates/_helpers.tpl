{{- define "billing-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "billing-service.labels" -}}
app.kubernetes.io/name: billing-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: gridforge
gridforge.io/domain: ev-charging
{{- end -}}

{{- define "billing-service.selectorLabels" -}}
app.kubernetes.io/name: billing-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
