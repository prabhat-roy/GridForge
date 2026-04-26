{{- define "maintenance-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "maintenance-service.labels" -}}
app.kubernetes.io/name: maintenance-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: gridforge
gridforge.io/domain: asset
{{- end -}}

{{- define "maintenance-service.selectorLabels" -}}
app.kubernetes.io/name: maintenance-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
