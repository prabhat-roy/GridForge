{{- define "tariff-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "tariff-service.labels" -}}
app.kubernetes.io/name: tariff-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: gridforge
gridforge.io/domain: customer
{{- end -}}

{{- define "tariff-service.selectorLabels" -}}
app.kubernetes.io/name: tariff-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
