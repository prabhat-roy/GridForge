{{- define "capacity-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "capacity-service.labels" -}}
app.kubernetes.io/name: capacity-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: gridforge
gridforge.io/domain: market
{{- end -}}

{{- define "capacity-service.selectorLabels" -}}
app.kubernetes.io/name: capacity-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
