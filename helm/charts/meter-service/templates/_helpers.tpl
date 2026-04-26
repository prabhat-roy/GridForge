{{- define "meter-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "meter-service.labels" -}}
app.kubernetes.io/name: meter-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: gridforge
gridforge.io/domain: ami
{{- end -}}

{{- define "meter-service.selectorLabels" -}}
app.kubernetes.io/name: meter-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
