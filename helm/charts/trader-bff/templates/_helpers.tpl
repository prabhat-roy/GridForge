{{- define "trader-bff.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "trader-bff.labels" -}}
app.kubernetes.io/name: trader-bff
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: gridforge
gridforge.io/domain: platform
{{- end -}}

{{- define "trader-bff.selectorLabels" -}}
app.kubernetes.io/name: trader-bff
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
